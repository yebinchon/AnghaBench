
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;


 int lower_32_bits (int ) ;
 int pt_regs_read_reg (struct pt_regs*,int) ;

__attribute__((used)) static inline u32 get_w_reg(struct pt_regs *regs, int reg)
{
 return lower_32_bits(pt_regs_read_reg(regs, reg));
}
