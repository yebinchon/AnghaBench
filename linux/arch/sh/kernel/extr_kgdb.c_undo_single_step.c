
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __raw_writew (scalar_t__,scalar_t__) ;
 int flush_icache_range (scalar_t__,scalar_t__) ;
 scalar_t__ stepped_address ;
 scalar_t__ stepped_opcode ;

__attribute__((used)) static void undo_single_step(struct pt_regs *linux_regs)
{


 if (stepped_opcode != 0) {
  __raw_writew(stepped_opcode, stepped_address);
  flush_icache_range(stepped_address, stepped_address + 2);
 }

 stepped_opcode = 0;
}
