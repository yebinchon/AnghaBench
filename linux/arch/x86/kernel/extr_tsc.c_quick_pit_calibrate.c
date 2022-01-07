
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MAX_QUICK_PIT_ITERATIONS ;
 int PIT_TICK_RATE ;
 int do_div (int,int) ;
 int has_legacy_pic () ;
 int inb (int) ;
 int outb (int,int) ;
 scalar_t__ pit_expect_msb (int,int*,unsigned long*) ;
 int pit_verify_msb (int) ;
 int pr_info (char*) ;

__attribute__((used)) static unsigned long quick_pit_calibrate(void)
{
 int i;
 u64 tsc, delta;
 unsigned long d1, d2;

 if (!has_legacy_pic())
  return 0;


 outb((inb(0x61) & ~0x02) | 0x01, 0x61);
 outb(0xb0, 0x43);


 outb(0xff, 0x42);
 outb(0xff, 0x42);







 pit_verify_msb(0);

 if (pit_expect_msb(0xff, &tsc, &d1)) {
  for (i = 1; i <= MAX_QUICK_PIT_ITERATIONS; i++) {
   if (!pit_expect_msb(0xff-i, &delta, &d2))
    break;

   delta -= tsc;





   if (i == 1 &&
       d1 + d2 >= (delta * MAX_QUICK_PIT_ITERATIONS) >> 11)
    return 0;




   if (d1+d2 >= delta >> 11)
    continue;
   if (!pit_verify_msb(0xfe - i))
    break;
   goto success;
  }
 }
 pr_info("Fast TSC calibration failed\n");
 return 0;

success:
 delta *= PIT_TICK_RATE;
 do_div(delta, i*256*1000);
 pr_info("Fast TSC calibration using PIT\n");
 return delta;
}
