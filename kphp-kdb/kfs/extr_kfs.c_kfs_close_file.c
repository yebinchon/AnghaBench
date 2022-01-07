
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* kfs_file_handle_t ;
struct TYPE_4__ {int fd; scalar_t__ info; } ;


 int assert (int) ;
 scalar_t__ close (int) ;
 int file_info_decref (scalar_t__) ;
 int free (TYPE_1__*) ;

int kfs_close_file (kfs_file_handle_t F, int close_handle) {
  if (!F) {
    return 0;
  }
  if (F->fd >= 0) {
    if (close_handle) {
      assert (close (F->fd) >= 0);
    }
    F->fd = -1;
  }
  if (F->info) {
    file_info_decref (F->info);
    F->info = 0;
  }
  free (F);
  return 0;
}
