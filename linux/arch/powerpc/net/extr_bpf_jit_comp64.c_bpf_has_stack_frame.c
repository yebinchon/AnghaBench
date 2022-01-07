
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codegen_context {int seen; } ;


 int BPF_REG_FP ;
 int SEEN_FUNC ;
 scalar_t__ bpf_is_seen_register (struct codegen_context*,int ) ;

__attribute__((used)) static inline bool bpf_has_stack_frame(struct codegen_context *ctx)
{






 return ctx->seen & SEEN_FUNC || bpf_is_seen_register(ctx, BPF_REG_FP);
}
