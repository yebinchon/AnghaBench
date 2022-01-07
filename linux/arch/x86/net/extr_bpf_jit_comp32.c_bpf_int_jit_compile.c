
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jit_context {int cleanup_addr; } ;
struct bpf_prog {int len; int jited; int jited_len; void* bpf_func; int jit_requested; } ;
struct bpf_binary_header {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 struct bpf_binary_header* bpf_jit_binary_alloc (int,int **,int,int ) ;
 int bpf_jit_binary_free (struct bpf_binary_header*) ;
 int bpf_jit_binary_lock_ro (struct bpf_binary_header*) ;
 struct bpf_prog* bpf_jit_blind_constants (struct bpf_prog*) ;
 int bpf_jit_dump (int,int,int,int *) ;
 int bpf_jit_enable ;
 int bpf_jit_prog_release_other (struct bpf_prog*,struct bpf_prog*) ;
 int cond_resched () ;
 int do_jit (struct bpf_prog*,int*,int *,int,struct jit_context*) ;
 int jit_fill_hole ;
 int kfree (int*) ;
 int* kmalloc_array (int,int,int ) ;
 int pr_err (char*,int,int) ;

struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
{
 struct bpf_binary_header *header = ((void*)0);
 struct bpf_prog *tmp, *orig_prog = prog;
 int proglen, oldproglen = 0;
 struct jit_context ctx = {};
 bool tmp_blinded = 0;
 u8 *image = ((void*)0);
 int *addrs;
 int pass;
 int i;

 if (!prog->jit_requested)
  return orig_prog;

 tmp = bpf_jit_blind_constants(prog);




 if (IS_ERR(tmp))
  return orig_prog;
 if (tmp != prog) {
  tmp_blinded = 1;
  prog = tmp;
 }

 addrs = kmalloc_array(prog->len, sizeof(*addrs), GFP_KERNEL);
 if (!addrs) {
  prog = orig_prog;
  goto out;
 }





 for (proglen = 0, i = 0; i < prog->len; i++) {
  proglen += 64;
  addrs[i] = proglen;
 }
 ctx.cleanup_addr = proglen;







 for (pass = 0; pass < 20 || image; pass++) {
  proglen = do_jit(prog, addrs, image, oldproglen, &ctx);
  if (proglen <= 0) {
out_image:
   image = ((void*)0);
   if (header)
    bpf_jit_binary_free(header);
   prog = orig_prog;
   goto out_addrs;
  }
  if (image) {
   if (proglen != oldproglen) {
    pr_err("bpf_jit: proglen=%d != oldproglen=%d\n",
           proglen, oldproglen);
    goto out_image;
   }
   break;
  }
  if (proglen == oldproglen) {
   header = bpf_jit_binary_alloc(proglen, &image,
            1, jit_fill_hole);
   if (!header) {
    prog = orig_prog;
    goto out_addrs;
   }
  }
  oldproglen = proglen;
  cond_resched();
 }

 if (bpf_jit_enable > 1)
  bpf_jit_dump(prog->len, proglen, pass + 1, image);

 if (image) {
  bpf_jit_binary_lock_ro(header);
  prog->bpf_func = (void *)image;
  prog->jited = 1;
  prog->jited_len = proglen;
 } else {
  prog = orig_prog;
 }

out_addrs:
 kfree(addrs);
out:
 if (tmp_blinded)
  bpf_jit_prog_release_other(prog, prog == orig_prog ?
        tmp : orig_prog);
 return prog;
}
