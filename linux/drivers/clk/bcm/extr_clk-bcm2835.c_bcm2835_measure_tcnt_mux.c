
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_cprman {int regs_lock; int dev; } ;
typedef int ktime_t ;


 int CM_BUSY ;
 int CM_KILL ;
 int CM_OSCCOUNT ;
 int CM_SRC_BITS ;
 int CM_SRC_MASK ;
 int CM_TCNTCNT ;
 int CM_TCNTCTL ;
 int CM_TCNT_SRC1_SHIFT ;
 int LOCK_TIMEOUT_NS ;
 int cprman_read (struct bcm2835_cprman*,int ) ;
 int cprman_write (struct bcm2835_cprman*,int ,int) ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;
 int ktime_add_ns (int ,int ) ;
 scalar_t__ ktime_after (int ,int ) ;
 int ktime_get () ;
 int mdelay (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static unsigned long bcm2835_measure_tcnt_mux(struct bcm2835_cprman *cprman,
           u32 tcnt_mux)
{
 u32 osccount = 19200;
 u32 count;
 ktime_t timeout;

 spin_lock(&cprman->regs_lock);

 cprman_write(cprman, CM_TCNTCTL, CM_KILL);

 cprman_write(cprman, CM_TCNTCTL,
       (tcnt_mux & CM_SRC_MASK) |
       (tcnt_mux >> CM_SRC_BITS) << CM_TCNT_SRC1_SHIFT);

 cprman_write(cprman, CM_OSCCOUNT, osccount);


 mdelay(1);


 timeout = ktime_add_ns(ktime_get(), LOCK_TIMEOUT_NS);
 while (cprman_read(cprman, CM_OSCCOUNT)) {
  if (ktime_after(ktime_get(), timeout)) {
   dev_err(cprman->dev, "timeout waiting for OSCCOUNT\n");
   count = 0;
   goto out;
  }
  cpu_relax();
 }


 timeout = ktime_add_ns(ktime_get(), LOCK_TIMEOUT_NS);
 while (cprman_read(cprman, CM_TCNTCTL) & CM_BUSY) {
  if (ktime_after(ktime_get(), timeout)) {
   dev_err(cprman->dev, "timeout waiting for !BUSY\n");
   count = 0;
   goto out;
  }
  cpu_relax();
 }

 count = cprman_read(cprman, CM_TCNTCNT);

 cprman_write(cprman, CM_TCNTCTL, 0);

out:
 spin_unlock(&cprman->regs_lock);

 return count * 1000;
}
