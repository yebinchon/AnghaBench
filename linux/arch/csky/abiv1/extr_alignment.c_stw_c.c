
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pt_regs {int dummy; } ;


 int get_ptreg (struct pt_regs*,int) ;
 scalar_t__ stb_asm (int,int) ;

__attribute__((used)) static int stw_c(struct pt_regs *regs, uint32_t rz, uint32_t addr)
{
 uint32_t byte0, byte1, byte2, byte3;

 byte0 = byte1 = byte2 = byte3 = get_ptreg(regs, rz);

 byte0 &= 0xff;

 if (stb_asm(addr, byte0))
  return 1;

 addr += 1;
 byte1 = (byte1 >> 8) & 0xff;
 if (stb_asm(addr, byte1))
  return 1;

 addr += 1;
 byte2 = (byte2 >> 16) & 0xff;
 if (stb_asm(addr, byte2))
  return 1;

 addr += 1;
 byte3 = (byte3 >> 24) & 0xff;
 if (stb_asm(addr, byte3))
  return 1;

 return 0;
}
