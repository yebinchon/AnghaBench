
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static u64 direct_pcr_read(unsigned long reg_num)
{
 u64 val;

 WARN_ON_ONCE(reg_num != 0);
 __asm__ __volatile__("rd %%pcr, %0" : "=r" (val));
 return val;
}
