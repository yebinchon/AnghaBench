
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int fd; int flags; } ;


 int FIF_ERROR ;
 int close (int) ;
 int file_data_free (struct file_info*) ;

__attribute__((used)) static int invalidate_file (struct file_info *file) {
  file_data_free (file);
  if (file->fd >= 0) {
    close (file->fd);
    file->fd = -1;
  }
  file->flags |= FIF_ERROR;
  return -1;
}
