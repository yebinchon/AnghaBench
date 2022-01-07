
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_jit {scalar_t__* seen_reg; } ;



__attribute__((used)) static int get_start(struct bpf_jit *jit, int start)
{
 int i;

 for (i = start; i <= 15; i++) {
  if (jit->seen_reg[i])
   return i;
 }
 return 0;
}
