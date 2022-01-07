
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 scalar_t__ CKSEG1ADDR (unsigned long) ;
 scalar_t__ get_dbe (int,int*) ;

__attribute__((used)) static int ip22_gio_id(unsigned long addr, u32 *res)
{
 u8 tmp8;
 u8 tmp16;
 u32 tmp32;
 u8 *ptr8;
 u16 *ptr16;
 u32 *ptr32;

 ptr32 = (void *)CKSEG1ADDR(addr);
 if (!get_dbe(tmp32, ptr32)) {
  ptr8 = (void *)CKSEG1ADDR(addr + 3);
  if (get_dbe(tmp8, ptr8)) {






   *res = tmp32;
   return 1;
  }
  ptr16 = (void *)CKSEG1ADDR(addr + 2);
  get_dbe(tmp16, ptr16);
  if (tmp8 == (tmp16 & 0xff) &&
      tmp8 == (tmp32 & 0xff) &&
      tmp16 == (tmp32 & 0xffff)) {
   *res = tmp32;
   return 1;
  }
 }
 return 0;
}
