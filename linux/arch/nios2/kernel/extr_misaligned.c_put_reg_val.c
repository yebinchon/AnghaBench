
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pt_regs {int dummy; } ;


 int* reg_offsets ;

__attribute__((used)) static inline void put_reg_val(struct pt_regs *fp, int reg, u32 val)
{
 u8 *p = ((u8 *)fp) + reg_offsets[reg];
 *(u32 *)p = val;
}
