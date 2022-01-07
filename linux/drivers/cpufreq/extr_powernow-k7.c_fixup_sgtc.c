
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsb ;
 int latency ;
 int pr_warn (char*,unsigned int) ;

__attribute__((used)) static int fixup_sgtc(void)
{
 unsigned int sgtc;
 unsigned int m;

 m = fsb / 3333;
 if ((m % 10) >= 5)
  m += 5;

 m /= 10;

 sgtc = 100 * m * latency;
 sgtc = sgtc / 3;
 if (sgtc > 0xfffff) {
  pr_warn("SGTC too large %d\n", sgtc);
  sgtc = 0xfffff;
 }
 return sgtc;
}
