
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codegen_context {int dummy; } ;


 int bpf_jit_stack_local (struct codegen_context*) ;

__attribute__((used)) static int bpf_jit_stack_tailcallcnt(struct codegen_context *ctx)
{
 return bpf_jit_stack_local(ctx) + 8;
}
