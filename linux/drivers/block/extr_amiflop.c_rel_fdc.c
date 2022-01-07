
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdc_busy ;
 scalar_t__ fdc_nested ;
 int fdc_wait ;
 int printk (char*,...) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void rel_fdc(void)
{





 fdc_nested--;
 if (fdc_nested == 0) {
  fdc_busy = -1;
  wake_up(&fdc_wait);
 }
}
