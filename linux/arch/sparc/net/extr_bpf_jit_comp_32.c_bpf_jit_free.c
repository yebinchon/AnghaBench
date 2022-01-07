
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int bpf_func; scalar_t__ jited; } ;


 int bpf_prog_unlock_free (struct bpf_prog*) ;
 int module_memfree (int ) ;

void bpf_jit_free(struct bpf_prog *fp)
{
 if (fp->jited)
  module_memfree(fp->bpf_func);

 bpf_prog_unlock_free(fp);
}
