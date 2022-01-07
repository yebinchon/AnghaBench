
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* process; } ;
struct TYPE_5__ {int comm; int pid; } ;
typedef TYPE_2__ InfoScreen ;


 int InfoScreen_drawTitled (TYPE_2__*,char*,int ,int ) ;

void EnvScreen_draw(InfoScreen* this) {
   InfoScreen_drawTitled(this, "Environment of process %d - %s", this->process->pid, this->process->comm);
}
