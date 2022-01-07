
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pt_regs {int dummy; } ;


 int pt_regs_write_reg (struct pt_regs*,int,int ) ;

__attribute__((used)) static inline void set_x_reg(struct pt_regs *regs, int reg, u64 val)
{
 pt_regs_write_reg(regs, reg, val);
}
