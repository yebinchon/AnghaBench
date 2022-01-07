
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int user_index_data ;
typedef TYPE_1__* kfs_file_handle_t ;
typedef int index_header ;
struct TYPE_8__ {int user_cnt; int log_split_min; int log_split_max; int log_split_mod; struct TYPE_8__* user_index; scalar_t__ multiple_types; int created_at; scalar_t__ log_pos1_crc32; scalar_t__ log_pos0_crc32; scalar_t__ log_timestamp; scalar_t__ log_pos1; scalar_t__ log_pos0; } ;
struct TYPE_7__ {int fd; int offset; } ;


 int SEEK_SET ;
 int assert (int) ;
 TYPE_2__* dl_malloc (int) ;
 int* fd ;
 int fprintf (int ,char*,...) ;
 int get_index_header_size (TYPE_2__*) ;
 TYPE_2__ header ;
 int header_size ;
 int log_split_max ;
 int log_split_min ;
 int log_split_mod ;
 long long lseek (int,int,int ) ;
 int read (int,TYPE_2__*,int) ;
 int stderr ;
 int time (int *) ;
 int verbosity ;

int load_header (kfs_file_handle_t Index) {
  if (Index == ((void*)0)) {
    fd[0] = -1;

    header.user_cnt = 0;
    header.user_index = ((void*)0);

    header.log_pos0 = 0;
    header.log_pos1 = 0;
    header.log_timestamp = 0;
    header.log_split_min = 0;
    header.log_split_max = 1;
    header.log_split_mod = 1;
    header.log_pos0_crc32 = 0;
    header.log_pos1_crc32 = 0;

    header.multiple_types = 0;

    header.created_at = time (((void*)0));
    header_size = sizeof (index_header);

    return 0;
  }

  fd[0] = Index->fd;
  int offset = Index->offset;


  long long lseek_res = lseek (fd[0], offset, SEEK_SET);
  assert (lseek_res == offset);

  int size = sizeof (index_header) - sizeof (long);
  int r = read (fd[0], &header, size);
  if (r != size) {
    fprintf (stderr, "error reading header from index file: read %d bytes instead of %d at position %d: %m\n", r, size, offset);
    assert (r == size);
  }
  header.multiple_types += 41;

  size = sizeof (user_index_data) * (header.user_cnt + 1);
  header.user_index = dl_malloc (size);

  r = read (fd[0], header.user_index, size);
  if (r != size) {
    fprintf (stderr, "error reading header from index file: read %d bytes instead of %d: %m\n", r, size);
    assert (r == size);
  }

  assert (header.log_split_max);
  log_split_min = header.log_split_min;
  log_split_max = header.log_split_max;
  log_split_mod = header.log_split_mod;

  header_size = get_index_header_size (&header) - sizeof (long);

  if (verbosity > 1) {
    fprintf (stderr, "header loaded %d %d %d %d\n", fd[0], log_split_min, log_split_max, log_split_mod);
    fprintf (stderr, "ok\n");
  }
  return 1;
}
