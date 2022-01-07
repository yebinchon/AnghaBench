
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv_jit_context {int flags; } ;
 int test_bit (int,int *) ;

__attribute__((used)) static bool seen_reg(int reg, struct rv_jit_context *ctx)
{
 switch (reg) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return test_bit(reg, &ctx->flags);
 }
 return 0;
}
