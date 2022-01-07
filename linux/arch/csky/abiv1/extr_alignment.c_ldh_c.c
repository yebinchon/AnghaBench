
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pt_regs {int dummy; } ;


 scalar_t__ ldb_asm (int,int*) ;
 int put_ptreg (struct pt_regs*,int,int) ;

__attribute__((used)) static int ldh_c(struct pt_regs *regs, uint32_t rz, uint32_t addr)
{
 uint32_t byte0, byte1;

 if (ldb_asm(addr, &byte0))
  return 1;
 addr += 1;
 if (ldb_asm(addr, &byte1))
  return 1;

 byte0 |= byte1 << 8;
 put_ptreg(regs, rz, byte0);

 return 0;
}
