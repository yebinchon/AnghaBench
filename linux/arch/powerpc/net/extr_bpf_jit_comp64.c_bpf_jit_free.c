
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {scalar_t__ jited; scalar_t__ bpf_func; } ;
struct bpf_binary_header {int dummy; } ;


 unsigned long PAGE_MASK ;
 int bpf_jit_binary_free (struct bpf_binary_header*) ;
 int bpf_prog_unlock_free (struct bpf_prog*) ;

void bpf_jit_free(struct bpf_prog *fp)
{
 unsigned long addr = (unsigned long)fp->bpf_func & PAGE_MASK;
 struct bpf_binary_header *bpf_hdr = (void *)addr;

 if (fp->jited)
  bpf_jit_binary_free(bpf_hdr);

 bpf_prog_unlock_free(fp);
}
