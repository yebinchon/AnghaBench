
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CKSEG1ADDR (scalar_t__) ;
 scalar_t__ HQ2_MYSTERY_OFFS ;
 int get_dbe (int,int*) ;

__attribute__((used)) static int ip22_is_gr2(unsigned long addr)
{
 u32 tmp;
 u32 *ptr;


 ptr = (void *)CKSEG1ADDR(addr + HQ2_MYSTERY_OFFS);
 if (!get_dbe(tmp, ptr)) {
  if (tmp == 0xdeadbeef)
   return 1;
 }
 return 0;
}
