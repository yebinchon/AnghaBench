
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashfile_checkpoint {scalar_t__ offset; int ctx; } ;
struct hashfile {scalar_t__ offset; int ctx; scalar_t__ total; int fd; } ;
typedef scalar_t__ off_t ;


 int SEEK_SET ;
 scalar_t__ ftruncate (int ,scalar_t__) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;

int hashfile_truncate(struct hashfile *f, struct hashfile_checkpoint *checkpoint)
{
 off_t offset = checkpoint->offset;

 if (ftruncate(f->fd, offset) ||
     lseek(f->fd, offset, SEEK_SET) != offset)
  return -1;
 f->total = offset;
 f->ctx = checkpoint->ctx;
 f->offset = 0;
 return 0;
}
