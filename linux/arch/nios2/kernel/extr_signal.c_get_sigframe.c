
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long sp; } ;
struct ksignal {int dummy; } ;


 unsigned long sigsp (unsigned long,struct ksignal*) ;

__attribute__((used)) static inline void *get_sigframe(struct ksignal *ksig, struct pt_regs *regs,
     size_t frame_size)
{
 unsigned long usp;


 usp = regs->sp;


 usp = sigsp(usp, ksig);


 return (void *)((usp - frame_size) & -8UL);
}
