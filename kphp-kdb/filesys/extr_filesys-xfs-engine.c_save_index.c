
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int replica_prefix; } ;


 int compression_level ;
 TYPE_1__* engine_snapshot_replica ;
 int exit (int) ;
 char* get_new_snapshot_name (TYPE_1__*,scalar_t__,int ) ;
 int kprintf (char*,...) ;
 scalar_t__ last_snapshot_log_pos ;
 scalar_t__ log_cur_pos () ;
 int print_snapshot_name (char*) ;
 scalar_t__ rename_temporary_snapshot (char*) ;
 int save_binlogpos () ;
 int tar_pack (char*,int ,int ) ;
 int unlink (char*) ;
 int work_dir ;

int save_index (void) {
  char *newidxname = ((void*)0);

  if (log_cur_pos () == last_snapshot_log_pos) {
    kprintf ("skipping generation of new snapshot (snapshot for this position already exists)\n");
    return 0;
  }

  if (engine_snapshot_replica) {
    newidxname = get_new_snapshot_name (engine_snapshot_replica, log_cur_pos(), engine_snapshot_replica->replica_prefix);
  }

  if (!newidxname || newidxname[0] == '-') {
    kprintf ("cannot write index: cannot compute its name\n");
    exit (1);
  }
  int r = save_binlogpos ();
  if (r < 0) {
    kprintf ("save_binlogpos returns error code %d.\n", r);
    exit (1);
  }
  r = tar_pack (newidxname, work_dir, compression_level);
  if (r < 0) {
    kprintf ("tar_pack (%s, %s, %d) return error code %d.\n", newidxname, work_dir, compression_level, r);
    exit (1);
  }

  if (rename_temporary_snapshot (newidxname)) {
    kprintf ("cannot rename new index file from %s: %m\n", newidxname);
    unlink (newidxname);
    exit (1);
  }

  print_snapshot_name (newidxname);

  last_snapshot_log_pos = log_cur_pos ();
  return 0;
}
