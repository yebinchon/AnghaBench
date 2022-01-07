
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef enum reg_val_type { ____Placeholder_reg_val_type } reg_val_type ;



__attribute__((used)) static void set_reg_val_type(u64 *rvt, int reg, enum reg_val_type type)
{
 *rvt &= ~(7ull << (reg * 3));
 *rvt |= ((u64)type << (reg * 3));
}
