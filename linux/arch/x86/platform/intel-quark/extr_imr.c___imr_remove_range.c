
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imr_regs {int addr_lo; int addr_hi; int wmask; int rmask; } ;
struct imr_device {int init; unsigned int max_imr; int lock; } ;
typedef scalar_t__ phys_addr_t ;


 int ENODEV ;
 int IMR_LOCK ;
 int IMR_READ_ACCESS_ALL ;
 int IMR_WRITE_ACCESS_ALL ;
 scalar_t__ WARN_ONCE (int,char*) ;
 int imr_check_params (scalar_t__,size_t) ;
 struct imr_device imr_dev ;
 int imr_is_enabled (struct imr_regs*) ;
 size_t imr_raw_size (size_t) ;
 int imr_read (struct imr_device*,unsigned int,struct imr_regs*) ;
 scalar_t__ imr_to_phys (int) ;
 int imr_write (struct imr_device*,int,struct imr_regs*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int,scalar_t__*,scalar_t__*,size_t) ;

__attribute__((used)) static int __imr_remove_range(int reg, phys_addr_t base, size_t size)
{
 phys_addr_t end;
 bool found = 0;
 unsigned int i;
 struct imr_device *idev = &imr_dev;
 struct imr_regs imr;
 size_t raw_size;
 int ret = 0;

 if (WARN_ONCE(idev->init == 0, "driver not initialized"))
  return -ENODEV;





 if (reg == -1) {
  ret = imr_check_params(base, size);
  if (ret)
   return ret;
 }


 raw_size = imr_raw_size(size);
 end = base + raw_size;

 mutex_lock(&idev->lock);

 if (reg >= 0) {

  ret = imr_read(idev, reg, &imr);
  if (ret)
   goto failed;

  if (!imr_is_enabled(&imr) || imr.addr_lo & IMR_LOCK) {
   ret = -ENODEV;
   goto failed;
  }
  found = 1;
 } else {

  for (i = 0; i < idev->max_imr; i++) {
   ret = imr_read(idev, i, &imr);
   if (ret)
    goto failed;

   if (!imr_is_enabled(&imr) || imr.addr_lo & IMR_LOCK)
    continue;

   if ((imr_to_phys(imr.addr_lo) == base) &&
       (imr_to_phys(imr.addr_hi) == end)) {
    found = 1;
    reg = i;
    break;
   }
  }
 }

 if (!found) {
  ret = -ENODEV;
  goto failed;
 }

 pr_debug("remove %d phys %pa-%pa size %zx\n", reg, &base, &end, raw_size);


 imr.addr_lo = 0;
 imr.addr_hi = 0;
 imr.rmask = IMR_READ_ACCESS_ALL;
 imr.wmask = IMR_WRITE_ACCESS_ALL;

 ret = imr_write(idev, reg, &imr);

failed:
 mutex_unlock(&idev->lock);
 return ret;
}
