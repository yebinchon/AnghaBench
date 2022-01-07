
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct return_instance {scalar_t__ stack; } ;
struct pt_regs {scalar_t__* gpr; } ;
typedef enum rp_check { ____Placeholder_rp_check } rp_check ;


 int RP_CHECK_CHAIN_CALL ;

bool arch_uretprobe_is_alive(struct return_instance *ret, enum rp_check ctx,
    struct pt_regs *regs)
{
 if (ctx == RP_CHECK_CHAIN_CALL)
  return regs->gpr[1] <= ret->stack;
 else
  return regs->gpr[1] < ret->stack;
}
