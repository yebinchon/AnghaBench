
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_id; } ;
typedef TYPE_1__ user_t ;
struct file_user_header {int user_first_local_id; int user_last_local_id; int directory_offset; int data_offset; int extra_offset; } ;
struct file_message {int dummy; } ;


 int assert (int) ;
 int check_message_size (struct file_message*,int,int ) ;
 int fprintf (int ,char*,char*,int,int,TYPE_1__*,int) ;
 int stderr ;

struct file_message *user_metafile_message_lookup (char *metafile, int metafile_size, int local_id, user_t *U) {
  struct file_user_header *H = (struct file_user_header *) metafile;
  struct file_message *M;
  if (!metafile || metafile_size <= 0) {
    fprintf (stderr, "user_metafile_message_lookup (%p, %d, %d, %p [%d])\n", metafile, metafile_size, local_id, U, U->user_id);
  }
  assert (metafile && metafile_size > 0);
  if (local_id < H->user_first_local_id || local_id > H->user_last_local_id) {
    return 0;
  }
  int *p = (int *) (metafile + H->directory_offset) + (local_id - H->user_first_local_id);
  if (p[0] == p[1]) {
    return 0;
  }
  assert (p[0] >= H->data_offset && p[0] < p[1] && p[1] <= H->extra_offset);
  M = (struct file_message *) (metafile + p[0]);
  check_message_size (M, p[1] - p[0], 0);
  return M;
}
