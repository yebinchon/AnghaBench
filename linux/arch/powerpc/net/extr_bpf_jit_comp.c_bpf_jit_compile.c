
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct codegen_context {int idx; int pc_ret0; scalar_t__ seen; } ;
struct bpf_prog {int len; int jited; void* bpf_func; } ;
struct TYPE_2__ {scalar_t__ kernel_toc; } ;


 unsigned int FUNCTION_DESCR_SIZE ;
 int GFP_KERNEL ;
 int bpf_flush_icache (int *,int *) ;
 scalar_t__ bpf_jit_build_body (struct bpf_prog*,int *,struct codegen_context*,unsigned int*) ;
 int bpf_jit_build_epilogue (int *,struct codegen_context*) ;
 int bpf_jit_build_prologue (struct bpf_prog*,int *,struct codegen_context*) ;
 int bpf_jit_dump (int,unsigned int,int,int *) ;
 int bpf_jit_enable ;
 unsigned int* kcalloc (int,int,int ) ;
 int kfree (unsigned int*) ;
 TYPE_1__* local_paca ;
 int * module_alloc (unsigned int) ;
 int pr_info (char*,int,unsigned int,scalar_t__) ;

void bpf_jit_compile(struct bpf_prog *fp)
{
 unsigned int proglen;
 unsigned int alloclen;
 u32 *image = ((void*)0);
 u32 *code_base;
 unsigned int *addrs;
 struct codegen_context cgctx;
 int pass;
 int flen = fp->len;

 if (!bpf_jit_enable)
  return;

 addrs = kcalloc(flen + 1, sizeof(*addrs), GFP_KERNEL);
 if (addrs == ((void*)0))
  return;
 cgctx.idx = 0;
 cgctx.seen = 0;
 cgctx.pc_ret0 = -1;

 if (bpf_jit_build_body(fp, 0, &cgctx, addrs))

  goto out;






 bpf_jit_build_prologue(fp, 0, &cgctx);
 bpf_jit_build_epilogue(0, &cgctx);

 proglen = cgctx.idx * 4;
 alloclen = proglen + FUNCTION_DESCR_SIZE;
 image = module_alloc(alloclen);
 if (!image)
  goto out;

 code_base = image + (FUNCTION_DESCR_SIZE/4);


 for (pass = 1; pass < 3; pass++) {

  cgctx.idx = 0;
  bpf_jit_build_prologue(fp, code_base, &cgctx);
  bpf_jit_build_body(fp, code_base, &cgctx, addrs);
  bpf_jit_build_epilogue(code_base, &cgctx);

  if (bpf_jit_enable > 1)
   pr_info("Pass %d: shrink = %d, seen = 0x%x\n", pass,
    proglen - (cgctx.idx * 4), cgctx.seen);
 }

 if (bpf_jit_enable > 1)



  bpf_jit_dump(flen, proglen, pass, code_base);

 bpf_flush_icache(code_base, code_base + (proglen/4));







 fp->bpf_func = (void *)image;
 fp->jited = 1;

out:
 kfree(addrs);
 return;
}
