
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pt_regs {int dummy; } ;


 int pt_regs_read_reg (struct pt_regs*,int) ;

__attribute__((used)) static inline u64 get_x_reg(struct pt_regs *regs, int reg)
{
 return pt_regs_read_reg(regs, reg);
}
