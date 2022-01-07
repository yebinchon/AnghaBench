
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;
struct spu_context {int last_ran; } ;
struct spu {struct spu_context* ctx; } ;


 int spu_cpu_affinity_set (struct spu*,int ) ;

__attribute__((used)) static inline void set_int_route(struct spu_state *csa, struct spu *spu)
{
 struct spu_context *ctx = spu->ctx;

 spu_cpu_affinity_set(spu, ctx->last_ran);
}
