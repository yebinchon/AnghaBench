
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int log_pos1_crc32; int log_split_mod; int log_split_max; int log_split_min; int log_timestamp; scalar_t__ log_pos1; int created_at; int magic; } ;
typedef TYPE_1__ index_header ;
typedef int header ;
struct TYPE_8__ {int replica_prefix; } ;


 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SEEK_SET ;
 int SUPPORT_INDEX_MAGIC ;
 int assert (int) ;
 int binlog_disabled ;
 scalar_t__ close (int) ;
 int dbg (char*) ;
 TYPE_4__* engine_snapshot_replica ;
 int exit (int) ;
 int* fd ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fsync (int) ;
 long long get_index_header_size (TYPE_1__*) ;
 char* get_new_snapshot_name (TYPE_4__*,scalar_t__,int ) ;
 scalar_t__ jump_log_pos ;
 int log_crc32_complement ;
 scalar_t__ log_cur_pos () ;
 int log_last_ts ;
 int log_split_max ;
 int log_split_min ;
 int log_split_mod ;
 long long lseek (int,long long,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int open (char*,int,int) ;
 int print_snapshot_name (char*) ;
 int relax_log_crc32 (int ) ;
 int relax_write_log_crc32 () ;
 scalar_t__ rename_temporary_snapshot (char*) ;
 int stderr ;
 int time (int *) ;
 int unlink (char*) ;
 scalar_t__ verbosity ;
 int write (int,TYPE_1__*,int) ;

int save_index (void) {
  char *newidxname = ((void*)0);

  dbg ("save_index\n");
  if (engine_snapshot_replica) {
    newidxname = get_new_snapshot_name (engine_snapshot_replica, log_cur_pos(), engine_snapshot_replica->replica_prefix);
  }

  if (!newidxname || newidxname[0] == '-') {
    fprintf (stderr, "cannot write index: cannot compute its name\n");
    exit (1);
  }

  if (log_cur_pos() == jump_log_pos) {
    fprintf (stderr, "skipping generation of new snapshot %s for position %lld: snapshot for this position already exists\n",
       newidxname, jump_log_pos);
    return 0;
  }

  if (verbosity > 0) {
    fprintf (stderr, "creating index %s at log position %lld\n", newidxname, log_cur_pos());
  }

  if (!binlog_disabled) {
    relax_write_log_crc32();
  } else {
    relax_log_crc32 (0);
  }

  index_header header;
  memset (&header, 0, sizeof (header));

  fd[1] = open (newidxname, O_CREAT | O_TRUNC | O_WRONLY | O_EXCL, 0660);
  if (fd[1] < 0) {
    fprintf (stderr, "cannot create new index file %s: %m\n", newidxname);
    exit (1);
  }

  header.magic = SUPPORT_INDEX_MAGIC;
  header.created_at = time (((void*)0));

  long long fCurr = get_index_header_size (&header);
  assert (lseek (fd[1], fCurr, SEEK_SET) == fCurr);


  header.log_pos1 = log_cur_pos();
  header.log_timestamp = log_last_ts;
  header.log_split_min = log_split_min;
  header.log_split_max = log_split_max;
  header.log_split_mod = log_split_mod;
  relax_log_crc32 (0);
  header.log_pos1_crc32 = ~log_crc32_complement;

  assert (lseek (fd[1], 0, SEEK_SET) == 0);
  assert (write (fd[1], &header, sizeof (header)) == sizeof (header));

  assert (fsync (fd[1]) >= 0);
  assert (close (fd[1]) >= 0);
  fd[1] = -1;

  if (rename_temporary_snapshot (newidxname)) {
    fprintf (stderr, "cannot rename new index file from %s: %m\n", newidxname);
    unlink (newidxname);
    exit (1);
  }

  print_snapshot_name (newidxname);
  return 0;
}
