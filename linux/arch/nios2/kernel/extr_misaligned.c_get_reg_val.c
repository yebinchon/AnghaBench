
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pt_regs {int dummy; } ;


 int* reg_offsets ;

__attribute__((used)) static inline u32 get_reg_val(struct pt_regs *fp, int reg)
{
 u8 *p = ((u8 *)fp) + reg_offsets[reg];
 return *(u32 *)p;
}
