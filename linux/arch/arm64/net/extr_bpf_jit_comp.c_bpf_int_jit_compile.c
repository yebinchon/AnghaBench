
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct jit_ctx {int idx; int epilogue_offset; struct arm64_jit_data* offset; int * image; struct bpf_prog* prog; } ;
struct bpf_prog {int jited; int jited_len; TYPE_1__* aux; int is_func; int * bpf_func; int len; int jit_requested; } ;
struct bpf_binary_header {int dummy; } ;
struct arm64_jit_data {struct bpf_binary_header* header; int * image; struct jit_ctx ctx; } ;
typedef int ctx ;
typedef int __le32 ;
struct TYPE_2__ {struct arm64_jit_data* jit_data; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int bpf_flush_icache (struct bpf_binary_header*,int *) ;
 struct bpf_binary_header* bpf_jit_binary_alloc (int,int **,int,int ) ;
 int bpf_jit_binary_free (struct bpf_binary_header*) ;
 int bpf_jit_binary_lock_ro (struct bpf_binary_header*) ;
 struct bpf_prog* bpf_jit_blind_constants (struct bpf_prog*) ;
 int bpf_jit_dump (int ,int,int,int *) ;
 int bpf_jit_enable ;
 int bpf_jit_prog_release_other (struct bpf_prog*,struct bpf_prog*) ;
 int bpf_prog_fill_jited_linfo (struct bpf_prog*,struct arm64_jit_data*) ;
 int bpf_prog_was_classic (struct bpf_prog*) ;
 scalar_t__ build_body (struct jit_ctx*,int) ;
 int build_epilogue (struct jit_ctx*) ;
 scalar_t__ build_prologue (struct jit_ctx*,int) ;
 int jit_fill_hole ;
 struct arm64_jit_data* kcalloc (int ,int,int ) ;
 int kfree (struct arm64_jit_data*) ;
 struct arm64_jit_data* kzalloc (int,int ) ;
 int memset (struct jit_ctx*,int ,int) ;
 int pr_err_once (char*,int,int) ;
 scalar_t__ validate_code (struct jit_ctx*) ;

struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
{
 struct bpf_prog *tmp, *orig_prog = prog;
 struct bpf_binary_header *header;
 struct arm64_jit_data *jit_data;
 bool was_classic = bpf_prog_was_classic(prog);
 bool tmp_blinded = 0;
 bool extra_pass = 0;
 struct jit_ctx ctx;
 int image_size;
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

 jit_data = prog->aux->jit_data;
 if (!jit_data) {
  jit_data = kzalloc(sizeof(*jit_data), GFP_KERNEL);
  if (!jit_data) {
   prog = orig_prog;
   goto out;
  }
  prog->aux->jit_data = jit_data;
 }
 if (jit_data->ctx.offset) {
  ctx = jit_data->ctx;
  image_ptr = jit_data->image;
  header = jit_data->header;
  extra_pass = 1;
  image_size = sizeof(u32) * ctx.idx;
  goto skip_init_ctx;
 }
 memset(&ctx, 0, sizeof(ctx));
 ctx.prog = prog;

 ctx.offset = kcalloc(prog->len, sizeof(int), GFP_KERNEL);
 if (ctx.offset == ((void*)0)) {
  prog = orig_prog;
  goto out_off;
 }




 if (build_body(&ctx, extra_pass)) {
  prog = orig_prog;
  goto out_off;
 }

 if (build_prologue(&ctx, was_classic)) {
  prog = orig_prog;
  goto out_off;
 }

 ctx.epilogue_offset = ctx.idx;
 build_epilogue(&ctx);


 image_size = sizeof(u32) * ctx.idx;
 header = bpf_jit_binary_alloc(image_size, &image_ptr,
          sizeof(u32), jit_fill_hole);
 if (header == ((void*)0)) {
  prog = orig_prog;
  goto out_off;
 }



 ctx.image = (__le32 *)image_ptr;
skip_init_ctx:
 ctx.idx = 0;

 build_prologue(&ctx, was_classic);

 if (build_body(&ctx, extra_pass)) {
  bpf_jit_binary_free(header);
  prog = orig_prog;
  goto out_off;
 }

 build_epilogue(&ctx);


 if (validate_code(&ctx)) {
  bpf_jit_binary_free(header);
  prog = orig_prog;
  goto out_off;
 }


 if (bpf_jit_enable > 1)
  bpf_jit_dump(prog->len, image_size, 2, ctx.image);

 bpf_flush_icache(header, ctx.image + ctx.idx);

 if (!prog->is_func || extra_pass) {
  if (extra_pass && ctx.idx != jit_data->ctx.idx) {
   pr_err_once("multi-func JIT bug %d != %d\n",
        ctx.idx, jit_data->ctx.idx);
   bpf_jit_binary_free(header);
   prog->bpf_func = ((void*)0);
   prog->jited = 0;
   goto out_off;
  }
  bpf_jit_binary_lock_ro(header);
 } else {
  jit_data->ctx = ctx;
  jit_data->image = image_ptr;
  jit_data->header = header;
 }
 prog->bpf_func = (void *)ctx.image;
 prog->jited = 1;
 prog->jited_len = image_size;

 if (!prog->is_func || extra_pass) {
  bpf_prog_fill_jited_linfo(prog, ctx.offset);
out_off:
  kfree(ctx.offset);
  kfree(jit_data);
  prog->aux->jit_data = ((void*)0);
 }
out:
 if (tmp_blinded)
  bpf_jit_prog_release_other(prog, prog == orig_prog ?
        tmp : orig_prog);
 return prog;
}
