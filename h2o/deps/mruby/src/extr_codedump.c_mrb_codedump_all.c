
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irep; } ;
struct RProc {TYPE_1__ body; } ;
typedef int mrb_state ;


 int codedump_recur (int *,int ) ;

void
mrb_codedump_all(mrb_state *mrb, struct RProc *proc)
{

  codedump_recur(mrb, proc->body.irep);

}
