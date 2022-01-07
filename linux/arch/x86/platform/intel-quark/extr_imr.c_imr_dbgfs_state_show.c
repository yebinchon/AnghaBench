
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct imr_device* private; } ;
struct imr_regs {int addr_lo; int addr_hi; int wmask; int rmask; } ;
struct imr_device {int max_imr; int lock; } ;
typedef int phys_addr_t ;


 int ENODEV ;
 int IMR_LOCK ;
 int IMR_MASK ;
 scalar_t__ imr_is_enabled (struct imr_regs*) ;
 int imr_read (struct imr_device*,int,struct imr_regs*) ;
 int imr_to_phys (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,int,int*,int*,size_t,int ,int ,char*,char*) ;

__attribute__((used)) static int imr_dbgfs_state_show(struct seq_file *s, void *unused)
{
 phys_addr_t base;
 phys_addr_t end;
 int i;
 struct imr_device *idev = s->private;
 struct imr_regs imr;
 size_t size;
 int ret = -ENODEV;

 mutex_lock(&idev->lock);

 for (i = 0; i < idev->max_imr; i++) {

  ret = imr_read(idev, i, &imr);
  if (ret)
   break;






  if (imr_is_enabled(&imr)) {
   base = imr_to_phys(imr.addr_lo);
   end = imr_to_phys(imr.addr_hi) + IMR_MASK;
   size = end - base + 1;
  } else {
   base = 0;
   end = 0;
   size = 0;
  }
  seq_printf(s, "imr%02i: base=%pa, end=%pa, size=0x%08zx "
      "rmask=0x%08x, wmask=0x%08x, %s, %s\n", i,
      &base, &end, size, imr.rmask, imr.wmask,
      imr_is_enabled(&imr) ? "enabled " : "disabled",
      imr.addr_lo & IMR_LOCK ? "locked" : "unlocked");
 }

 mutex_unlock(&idev->lock);
 return ret;
}
