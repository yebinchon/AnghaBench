
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {scalar_t__ fsize; scalar_t__ head_crc32; int tail_data; int fd; int filename; } ;


 int BSIZE ;
 int Buffer ;
 int SEEK_SET ;
 int assert (int) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int read (int ,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static int pair_matches (struct file_info *FS, struct file_info *FD) {
  int l1 = strlen (FS->filename), l2 = strlen (FD->filename), r;
  if (l2 != l1 + 11 || memcmp (FS->filename, FD->filename, l1) || FS->fsize < FD->fsize) {
    return 0;
  }

  if (FS->head_crc32 != FD->head_crc32) {
    return 0;
  }

  assert (lseek (FS->fd, FD->fsize - BSIZE, SEEK_SET) == FD->fsize - BSIZE);
  r = read (FS->fd, Buffer, BSIZE);
  if (r != BSIZE) {
    return 0;
  }
  return !memcmp (Buffer, FD->tail_data, BSIZE);
}
