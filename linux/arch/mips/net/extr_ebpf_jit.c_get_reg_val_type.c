
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int* reg_val_types; } ;
typedef enum reg_val_type { ____Placeholder_reg_val_type } reg_val_type ;



__attribute__((used)) static enum reg_val_type get_reg_val_type(const struct jit_ctx *ctx,
       int index, int reg)
{
 return (ctx->reg_val_types[index] >> (reg * 3)) & 7;
}
