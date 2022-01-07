
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rv_jit_context {int flags; } ;
 int __set_bit (int,int *) ;
 int* regmap ;

__attribute__((used)) static u8 bpf_to_rv_reg(int bpf_reg, struct rv_jit_context *ctx)
{
 u8 reg = regmap[bpf_reg];

 switch (reg) {
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  __set_bit(reg, &ctx->flags);
 }
 return reg;
}
