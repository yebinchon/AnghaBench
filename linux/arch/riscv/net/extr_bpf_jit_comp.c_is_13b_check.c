
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_13b_int (int) ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static int is_13b_check(int off, int insn)
{
 if (!is_13b_int(off)) {
  pr_err("bpf-jit: insn=%d offset=%d not supported yet!\n",
         insn, (int)off);
  return -1;
 }
 return 0;
}
