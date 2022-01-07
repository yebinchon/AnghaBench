
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static void direct_pcr_write(unsigned long reg_num, u64 val)
{
 WARN_ON_ONCE(reg_num != 0);
 __asm__ __volatile__("wr %0, 0x0, %%pcr" : : "r" (val));
}
