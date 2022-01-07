
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lev_rotate_to {int dummy; } ;
struct lev_rotate_from {int dummy; } ;
struct TYPE_9__ {int orig_file_size; TYPE_2__* F; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_8__ {TYPE_1__* info; } ;
struct TYPE_7__ {int filename; } ;


 scalar_t__ io_buff ;
 int kprintf (char*,char const*) ;
 int log_fatal (char*,...) ;
 scalar_t__ match_rotate_logevents (struct lev_rotate_to*,struct lev_rotate_from*) ;
 scalar_t__ stream_open (TYPE_3__*,int ,char const*,int ) ;
 scalar_t__ stream_read_lev_rotate_to (TYPE_3__*,struct lev_rotate_to*) ;
 int stream_read_limited (TYPE_3__*,scalar_t__,int) ;

int check_rotation_match (const char *src1, const char *src2) {
  stream_t A, B;
  if (stream_open (&A, 0, src1, 0) < 0) {
    kprintf ("stream open for file '%s' failed.\n", src1);
    return -1;
  }
  struct lev_rotate_to RT;
  if (stream_read_lev_rotate_to (&A, &RT) < 0) {
    return -1;
  }
  if (stream_open (&B, 0, src2, 0) < 0) {
    kprintf ("stream open for file '%s' failed.\n", src2);
    return -1;
  }
  if (B.orig_file_size < 36) {
    kprintf ("file '%s' is too short.\n", src2);
    return -1;
  }
  if (stream_read_limited (&B, io_buff, 36) < 36) {
    log_fatal ("fail read %d head bytes from file '%s'", 36, B.F->info->filename);
    return -1;
  }
  if (match_rotate_logevents (&RT, (struct lev_rotate_from *) io_buff) <= 0) {
    log_fatal ("rotation check for files '%s' and '%s' failed.\n", src1, src2);
    return -1;
  }
  return 0;
}
