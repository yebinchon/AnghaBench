
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_jit {int dummy; } ;


 int REGS_SAVE ;
 int get_end (struct bpf_jit*,int) ;
 int get_start (struct bpf_jit*,int) ;
 int restore_regs (struct bpf_jit*,int,int,int ) ;
 int save_regs (struct bpf_jit*,int,int) ;

__attribute__((used)) static void save_restore_regs(struct bpf_jit *jit, int op, u32 stack_depth)
{

 int re = 6, rs;

 do {
  rs = get_start(jit, re);
  if (!rs)
   break;
  re = get_end(jit, rs + 1);
  if (op == REGS_SAVE)
   save_regs(jit, rs, re);
  else
   restore_regs(jit, rs, re, stack_depth);
  re++;
 } while (re <= 15);
}
