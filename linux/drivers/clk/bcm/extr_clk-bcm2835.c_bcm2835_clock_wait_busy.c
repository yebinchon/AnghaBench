
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_cprman {int dev; } ;
struct bcm2835_clock_data {int ctl_reg; } ;
struct bcm2835_clock {int hw; struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;
typedef int ktime_t ;


 int CM_BUSY ;
 int LOCK_TIMEOUT_NS ;
 int clk_hw_get_name (int *) ;
 int cprman_read (struct bcm2835_cprman*,int ) ;
 int cpu_relax () ;
 int dev_err (int ,char*,int ) ;
 int ktime_add_ns (int ,int ) ;
 scalar_t__ ktime_after (int ,int ) ;
 int ktime_get () ;

__attribute__((used)) static void bcm2835_clock_wait_busy(struct bcm2835_clock *clock)
{
 struct bcm2835_cprman *cprman = clock->cprman;
 const struct bcm2835_clock_data *data = clock->data;
 ktime_t timeout = ktime_add_ns(ktime_get(), LOCK_TIMEOUT_NS);

 while (cprman_read(cprman, data->ctl_reg) & CM_BUSY) {
  if (ktime_after(ktime_get(), timeout)) {
   dev_err(cprman->dev, "%s: couldn't lock PLL\n",
    clk_hw_get_name(&clock->hw));
   return;
  }
  cpu_relax();
 }
}
