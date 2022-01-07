
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 scalar_t__ get_index_version (int) ;
 int lseek (int,int ,int ) ;
 int read (int,int*,int) ;

int check_index_type (int idx_fd) {
  lseek (idx_fd, 0, SEEK_SET);
  int magic;
  read (idx_fd, &magic, sizeof (int));
  if (get_index_version (magic) < 0) {
    return -1;
  }
  lseek (idx_fd, 0, SEEK_SET);
  return 0;
}
