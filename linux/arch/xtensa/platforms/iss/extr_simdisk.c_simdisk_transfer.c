
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simdisk {unsigned long size; int lock; int fd; } ;


 int READ_ONCE (char) ;
 unsigned long SECTOR_SHIFT ;
 int SEEK_SET ;
 int errno ;
 int pr_err (char*,int ) ;
 int pr_notice (char*,char*,unsigned long,unsigned long) ;
 int simc_lseek (int ,unsigned long,int ) ;
 unsigned long simc_read (int ,char*,unsigned long) ;
 unsigned long simc_write (int ,char*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void simdisk_transfer(struct simdisk *dev, unsigned long sector,
  unsigned long nsect, char *buffer, int write)
{
 unsigned long offset = sector << SECTOR_SHIFT;
 unsigned long nbytes = nsect << SECTOR_SHIFT;

 if (offset > dev->size || dev->size - offset < nbytes) {
  pr_notice("Beyond-end %s (%ld %ld)\n",
    write ? "write" : "read", offset, nbytes);
  return;
 }

 spin_lock(&dev->lock);
 while (nbytes > 0) {
  unsigned long io;

  simc_lseek(dev->fd, offset, SEEK_SET);
  READ_ONCE(*buffer);
  if (write)
   io = simc_write(dev->fd, buffer, nbytes);
  else
   io = simc_read(dev->fd, buffer, nbytes);
  if (io == -1) {
   pr_err("SIMDISK: IO error %d\n", errno);
   break;
  }
  buffer += io;
  offset += io;
  nbytes -= io;
 }
 spin_unlock(&dev->lock);
}
