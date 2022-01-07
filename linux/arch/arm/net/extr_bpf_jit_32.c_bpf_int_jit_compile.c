
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct jit_ctx {unsigned int idx; unsigned int prologue_bytes; unsigned int epilogue_offset; unsigned int epilogue_bytes; int * offsets; int * imms; scalar_t__ imm_count; int * target; int cpu_architecture; struct bpf_prog* prog; } ;
struct bpf_prog {int jited; unsigned int jited_len; void* bpf_func; scalar_t__ len; int jit_requested; } ;
struct bpf_binary_header {int dummy; } ;
typedef int ctx ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 struct bpf_binary_header* bpf_jit_binary_alloc (unsigned int,int **,int,int ) ;
 int bpf_jit_binary_free (struct bpf_binary_header*) ;
 int bpf_jit_binary_lock_ro (struct bpf_binary_header*) ;
 struct bpf_prog* bpf_jit_blind_constants (struct bpf_prog*) ;
 int bpf_jit_dump (scalar_t__,unsigned int,int,int *) ;
 int bpf_jit_enable ;
 int bpf_jit_prog_release_other (struct bpf_prog*,struct bpf_prog*) ;
 scalar_t__ build_body (struct jit_ctx*) ;
 int build_epilogue (struct jit_ctx*) ;
 int build_prologue (struct jit_ctx*) ;
 int cpu_architecture () ;
 int flush_icache_range (int ,int ) ;
 int jit_fill_hole ;
 void* kcalloc (scalar_t__,int,int ) ;
 int kfree (int *) ;
 int memset (struct jit_ctx*,int ,int) ;
 scalar_t__ validate_code (struct jit_ctx*) ;

struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
{
 struct bpf_prog *tmp, *orig_prog = prog;
 struct bpf_binary_header *header;
 bool tmp_blinded = 0;
 struct jit_ctx ctx;
 unsigned int tmp_idx;
 unsigned int image_size;
 u8 *image_ptr;




 if (!prog->jit_requested)
  return orig_prog;





 tmp = bpf_jit_blind_constants(prog);

 if (IS_ERR(tmp))
  return orig_prog;
 if (tmp != prog) {
  tmp_blinded = 1;
  prog = tmp;
 }

 memset(&ctx, 0, sizeof(ctx));
 ctx.prog = prog;
 ctx.cpu_architecture = cpu_architecture();




 ctx.offsets = kcalloc(prog->len, sizeof(int), GFP_KERNEL);
 if (ctx.offsets == ((void*)0)) {
  prog = orig_prog;
  goto out;
 }
 if (build_body(&ctx)) {
  prog = orig_prog;
  goto out_off;
 }

 tmp_idx = ctx.idx;
 build_prologue(&ctx);
 ctx.prologue_bytes = (ctx.idx - tmp_idx) * 4;

 ctx.epilogue_offset = ctx.idx;


 tmp_idx = ctx.idx;
 build_epilogue(&ctx);
 ctx.epilogue_bytes = (ctx.idx - tmp_idx) * 4;

 ctx.idx += ctx.imm_count;
 if (ctx.imm_count) {
  ctx.imms = kcalloc(ctx.imm_count, sizeof(u32), GFP_KERNEL);
  if (ctx.imms == ((void*)0)) {
   prog = orig_prog;
   goto out_off;
  }
 }
 image_size = sizeof(u32) * ctx.idx;


 header = bpf_jit_binary_alloc(image_size, &image_ptr,
          sizeof(u32), jit_fill_hole);



 if (header == ((void*)0)) {
  prog = orig_prog;
  goto out_imms;
 }


 ctx.target = (u32 *) image_ptr;
 ctx.idx = 0;

 build_prologue(&ctx);




 if (build_body(&ctx) < 0) {
  image_ptr = ((void*)0);
  bpf_jit_binary_free(header);
  prog = orig_prog;
  goto out_imms;
 }
 build_epilogue(&ctx);


 if (validate_code(&ctx)) {
  image_ptr = ((void*)0);
  bpf_jit_binary_free(header);
  prog = orig_prog;
  goto out_imms;
 }
 flush_icache_range((u32)header, (u32)(ctx.target + ctx.idx));

 if (bpf_jit_enable > 1)

  bpf_jit_dump(prog->len, image_size, 2, ctx.target);

 bpf_jit_binary_lock_ro(header);
 prog->bpf_func = (void *)ctx.target;
 prog->jited = 1;
 prog->jited_len = image_size;

out_imms:

 if (ctx.imm_count)
  kfree(ctx.imms);

out_off:
 kfree(ctx.offsets);
out:
 if (tmp_blinded)
  bpf_jit_prog_release_other(prog, prog == orig_prog ?
        tmp : orig_prog);
 return prog;
}
