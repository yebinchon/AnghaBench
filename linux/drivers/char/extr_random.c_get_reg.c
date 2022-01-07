
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct fast_pool {int reg_idx; } ;
typedef int __u32 ;


 unsigned int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,unsigned int) ;

__attribute__((used)) static __u32 get_reg(struct fast_pool *f, struct pt_regs *regs)
{
 __u32 *ptr = (__u32 *) regs;
 unsigned int idx;

 if (regs == ((void*)0))
  return 0;
 idx = READ_ONCE(f->reg_idx);
 if (idx >= sizeof(struct pt_regs) / sizeof(__u32))
  idx = 0;
 ptr += idx++;
 WRITE_ONCE(f->reg_idx, idx);
 return *ptr;
}
