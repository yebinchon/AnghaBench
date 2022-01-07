
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpets {int dummy; } ;


 unsigned long __hpet_calibrate (struct hpets*) ;

__attribute__((used)) static unsigned long hpet_calibrate(struct hpets *hpetp)
{
 unsigned long ret = ~0UL;
 unsigned long tmp;






 for ( ; ; ) {
  tmp = __hpet_calibrate(hpetp);
  if (ret <= tmp)
   break;
  ret = tmp;
 }

 return ret;
}
