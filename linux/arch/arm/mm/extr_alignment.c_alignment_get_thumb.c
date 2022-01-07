
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pt_regs {int dummy; } ;


 int __mem_to_opcode_thumb16 (int ) ;
 int get_user (int ,int *) ;
 int probe_kernel_address (int *,int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int alignment_get_thumb(struct pt_regs *regs, u16 *ip, u16 *inst)
{
 u16 instr = 0;
 int fault;

 if (user_mode(regs))
  fault = get_user(instr, ip);
 else
  fault = probe_kernel_address(ip, instr);

 *inst = __mem_to_opcode_thumb16(instr);

 return fault;
}
