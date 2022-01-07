
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct jit_ctx {int* reg_val_types; struct bpf_prog* skf; } ;
struct bpf_prog {int len; } ;


 int BPF_REG_1 ;
 int BPF_REG_5 ;
 int REG_64BIT ;
 int RVT_DONE ;
 int RVT_FALL_THROUGH ;
 int RVT_VISITED_MASK ;
 int WARN (int,char*) ;
 int reg_val_propagate_range (struct jit_ctx*,int,int,int) ;
 int set_reg_val_type (int*,int,int ) ;

__attribute__((used)) static int reg_val_propagate(struct jit_ctx *ctx)
{
 const struct bpf_prog *prog = ctx->skf;
 u64 exit_rvt;
 int reg;
 int i;





 exit_rvt = 0;


 for (reg = BPF_REG_1; reg <= BPF_REG_5; reg++)
  set_reg_val_type(&exit_rvt, reg, REG_64BIT);





 reg_val_propagate_range(ctx, exit_rvt, 0, 0);
restart_search:






 for (i = 0; i < prog->len; i++) {
  u64 rvt = ctx->reg_val_types[i];

  if ((rvt & RVT_VISITED_MASK) == RVT_DONE ||
      (rvt & RVT_VISITED_MASK) == 0)
   continue;
  if ((rvt & RVT_VISITED_MASK) == RVT_FALL_THROUGH) {
   reg_val_propagate_range(ctx, rvt & ~RVT_VISITED_MASK, i, 1);
  } else {
   WARN(1, "Unexpected RVT_BRANCH_TAKEN case.\n");
   reg_val_propagate_range(ctx, rvt & ~RVT_VISITED_MASK, i, 0);
  }
  goto restart_search;
 }






 return 0;
}
