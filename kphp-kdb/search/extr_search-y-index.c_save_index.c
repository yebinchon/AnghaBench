
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int replica_prefix; } ;


 int assert (int) ;
 int build_pairs_from_text () ;
 int build_word_lists () ;
 scalar_t__ close (int ) ;
 TYPE_1__* engine_snapshot_replica ;
 int exit (int) ;
 int * fd ;
 int fprintf (int ,char*) ;
 scalar_t__ fsync (int ) ;
 char* get_new_snapshot_name (TYPE_1__*,int ,int ) ;
 int kprintf (char*,char*) ;
 int log_cur_pos () ;
 int open_file (int ,char*,int) ;
 int print_snapshot_name (char*) ;
 scalar_t__ rename_temporary_snapshot (char*) ;
 int set_read_file (int ) ;
 int set_write_file (int ) ;
 int sort_items () ;
 int stderr ;
 int unlink (char*) ;
 int write_header0 () ;
 int write_header1 () ;
 int write_text () ;

void save_index (void) {
  char *newidxname = ((void*)0);
  if (engine_snapshot_replica) {
    newidxname = get_new_snapshot_name (engine_snapshot_replica, log_cur_pos(), engine_snapshot_replica->replica_prefix);
  }

  if (!newidxname || newidxname[0] == '-') {
    fprintf (stderr, "cannot write index: cannot compute its name\n");
    exit (1);
  }

  open_file (0, newidxname, 1);

  set_read_file (fd[0]);
  set_write_file (fd[0]);

  sort_items ();

  write_header0 ();
  write_text ();
  build_pairs_from_text ();
  build_word_lists ();
  write_header1 ();

  assert (fsync(fd[0]) >= 0);
  assert (close (fd[0]) >= 0);

  if (rename_temporary_snapshot (newidxname)) {
    kprintf ("cannot rename new index file from %s: %m\n", newidxname);
    unlink (newidxname);
    exit (1);
  }

  print_snapshot_name (newidxname);
}
