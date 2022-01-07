
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct jit_ctx {int use_bbit_insns; int flags; int idx; int gen_b_offsets; int * reg_val_types; int * offsets; int * target; scalar_t__ long_b_conversion; struct bpf_prog* skf; } ;
struct bpf_prog {int jited; unsigned int jited_len; void* bpf_func; scalar_t__ len; int jit_requested; } ;
struct bpf_binary_header {int dummy; } ;
typedef int ctx ;






 int EBPF_SAVE_RA ;
 int EBPF_SAVE_S4 ;
 int EBPF_SEEN_TC ;
 int EBPF_TCC_IN_V1 ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int MIPS_ISA_REV ;
 int MIPS_R_RA ;
 struct bpf_binary_header* bpf_jit_binary_alloc (unsigned int,int **,int,int ) ;
 int bpf_jit_binary_free (struct bpf_binary_header*) ;
 int bpf_jit_binary_lock_ro (struct bpf_binary_header*) ;
 struct bpf_prog* bpf_jit_blind_constants (struct bpf_prog*) ;
 int bpf_jit_dump (scalar_t__,unsigned int,int,int *) ;
 int bpf_jit_enable ;
 int bpf_jit_prog_release_other (struct bpf_prog*,struct bpf_prog*) ;
 scalar_t__ build_int_body (struct jit_ctx*) ;
 scalar_t__ build_int_epilogue (struct jit_ctx*,int ) ;
 int current_cpu_type () ;
 int flush_icache_range (unsigned long,unsigned long) ;
 scalar_t__ gen_int_prologue (struct jit_ctx*) ;
 int jit_fill_hole ;
 void* kcalloc (scalar_t__,int,int ) ;
 int kfree (int *) ;
 int memset (struct jit_ctx*,int ,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ reg_val_propagate (struct jit_ctx*) ;

struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
{
 struct bpf_prog *orig_prog = prog;
 bool tmp_blinded = 0;
 struct bpf_prog *tmp;
 struct bpf_binary_header *header = ((void*)0);
 struct jit_ctx ctx;
 unsigned int image_size;
 u8 *image_ptr;

 if (!prog->jit_requested || MIPS_ISA_REV < 2)
  return prog;

 tmp = bpf_jit_blind_constants(prog);



 if (IS_ERR(tmp))
  return orig_prog;
 if (tmp != prog) {
  tmp_blinded = 1;
  prog = tmp;
 }

 memset(&ctx, 0, sizeof(ctx));

 preempt_disable();
 switch (current_cpu_type()) {
 case 131:
 case 128:
 case 130:
 case 129:
  ctx.use_bbit_insns = 1;
  break;
 default:
  ctx.use_bbit_insns = 0;
 }
 preempt_enable();

 ctx.offsets = kcalloc(prog->len + 1, sizeof(*ctx.offsets), GFP_KERNEL);
 if (ctx.offsets == ((void*)0))
  goto out_err;

 ctx.reg_val_types = kcalloc(prog->len + 1, sizeof(*ctx.reg_val_types), GFP_KERNEL);
 if (ctx.reg_val_types == ((void*)0))
  goto out_err;

 ctx.skf = prog;

 if (reg_val_propagate(&ctx))
  goto out_err;





 if (build_int_body(&ctx))
  goto out_err;





 if (ctx.flags & EBPF_SEEN_TC) {
  if (ctx.flags & EBPF_SAVE_RA)
   ctx.flags |= EBPF_SAVE_S4;
  else
   ctx.flags |= EBPF_TCC_IN_V1;
 }
 do {
  ctx.idx = 0;
  ctx.gen_b_offsets = 1;
  ctx.long_b_conversion = 0;
  if (gen_int_prologue(&ctx))
   goto out_err;
  if (build_int_body(&ctx))
   goto out_err;
  if (build_int_epilogue(&ctx, MIPS_R_RA))
   goto out_err;
 } while (ctx.long_b_conversion);

 image_size = 4 * ctx.idx;

 header = bpf_jit_binary_alloc(image_size, &image_ptr,
          sizeof(u32), jit_fill_hole);
 if (header == ((void*)0))
  goto out_err;

 ctx.target = (u32 *)image_ptr;


 ctx.idx = 0;
 if (gen_int_prologue(&ctx))
  goto out_err;
 if (build_int_body(&ctx))
  goto out_err;
 if (build_int_epilogue(&ctx, MIPS_R_RA))
  goto out_err;


 flush_icache_range((unsigned long)ctx.target,
      (unsigned long)&ctx.target[ctx.idx]);

 if (bpf_jit_enable > 1)

  bpf_jit_dump(prog->len, image_size, 2, ctx.target);

 bpf_jit_binary_lock_ro(header);
 prog->bpf_func = (void *)ctx.target;
 prog->jited = 1;
 prog->jited_len = image_size;
out_normal:
 if (tmp_blinded)
  bpf_jit_prog_release_other(prog, prog == orig_prog ?
        tmp : orig_prog);
 kfree(ctx.offsets);
 kfree(ctx.reg_val_types);

 return prog;

out_err:
 prog = orig_prog;
 if (header)
  bpf_jit_binary_free(header);
 goto out_normal;
}
