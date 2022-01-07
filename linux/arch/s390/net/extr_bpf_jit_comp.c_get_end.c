
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_jit {scalar_t__* seen_reg; } ;



__attribute__((used)) static int get_end(struct bpf_jit *jit, int start)
{
 int i;

 for (i = start; i < 15; i++) {
  if (!jit->seen_reg[i] && !jit->seen_reg[i + 1])
   return i - 1;
 }
 return jit->seen_reg[15] ? 15 : 14;
}
