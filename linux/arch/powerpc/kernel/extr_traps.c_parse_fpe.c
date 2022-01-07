
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int nip; } ;
struct TYPE_5__ {int fpscr; } ;
struct TYPE_6__ {TYPE_1__ fp_state; } ;
struct TYPE_7__ {TYPE_2__ thread; } ;


 int SIGFPE ;
 int __parse_fpscr (int ) ;
 int _exception (int ,struct pt_regs*,int,int ) ;
 TYPE_3__* current ;
 int flush_fp_to_thread (TYPE_3__*) ;

__attribute__((used)) static void parse_fpe(struct pt_regs *regs)
{
 int code = 0;

 flush_fp_to_thread(current);

 code = __parse_fpscr(current->thread.fp_state.fpscr);

 _exception(SIGFPE, regs, code, regs->nip);
}
