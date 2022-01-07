
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imr_regs {unsigned int rmask; unsigned int wmask; void* addr_hi; void* addr_lo; } ;
struct imr_device {int init; unsigned int max_imr; int lock; } ;
typedef scalar_t__ phys_addr_t ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENOTSUPP ;
 unsigned int IMR_READ_ACCESS_ALL ;
 unsigned int IMR_WRITE_ACCESS_ALL ;
 scalar_t__ WARN_ONCE (int,char*) ;
 scalar_t__ imr_address_overlap (scalar_t__,struct imr_regs*) ;
 int imr_check_params (scalar_t__,size_t) ;
 struct imr_device imr_dev ;
 scalar_t__ imr_is_enabled (struct imr_regs*) ;
 size_t imr_raw_size (size_t) ;
 int imr_read (struct imr_device*,unsigned int,struct imr_regs*) ;
 int imr_write (struct imr_device*,int,struct imr_regs*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* phys_to_imr (scalar_t__) ;
 int pr_debug (char*,int,scalar_t__*,scalar_t__*,size_t,unsigned int,unsigned int) ;

int imr_add_range(phys_addr_t base, size_t size,
    unsigned int rmask, unsigned int wmask)
{
 phys_addr_t end;
 unsigned int i;
 struct imr_device *idev = &imr_dev;
 struct imr_regs imr;
 size_t raw_size;
 int reg;
 int ret;

 if (WARN_ONCE(idev->init == 0, "driver not initialized"))
  return -ENODEV;

 ret = imr_check_params(base, size);
 if (ret)
  return ret;


 raw_size = imr_raw_size(size);
 end = base + raw_size;





 imr.addr_lo = phys_to_imr(base);
 imr.addr_hi = phys_to_imr(end);
 imr.rmask = rmask;
 imr.wmask = wmask;
 if (!imr_is_enabled(&imr))
  return -ENOTSUPP;

 mutex_lock(&idev->lock);







 reg = -1;
 for (i = 0; i < idev->max_imr; i++) {
  ret = imr_read(idev, i, &imr);
  if (ret)
   goto failed;


  ret = -EINVAL;
  if (imr_is_enabled(&imr)) {
   if (imr_address_overlap(base, &imr))
    goto failed;
   if (imr_address_overlap(end, &imr))
    goto failed;
  } else {
   reg = i;
  }
 }


 if (reg == -1) {
  ret = -ENOMEM;
  goto failed;
 }

 pr_debug("add %d phys %pa-%pa size %zx mask 0x%08x wmask 0x%08x\n",
   reg, &base, &end, raw_size, rmask, wmask);


 imr.addr_lo = phys_to_imr(base);
 imr.addr_hi = phys_to_imr(end);
 imr.rmask = rmask;
 imr.wmask = wmask;

 ret = imr_write(idev, reg, &imr);
 if (ret < 0) {





  imr.addr_lo = 0;
  imr.addr_hi = 0;
  imr.rmask = IMR_READ_ACCESS_ALL;
  imr.wmask = IMR_WRITE_ACCESS_ALL;
  imr_write(idev, reg, &imr);
 }
failed:
 mutex_unlock(&idev->lock);
 return ret;
}
