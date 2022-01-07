
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* process; } ;
struct TYPE_7__ {int pid; } ;
struct TYPE_6__ {int comm; } ;
typedef TYPE_2__ OpenFilesScreen ;
typedef TYPE_3__ InfoScreen ;


 int InfoScreen_drawTitled (TYPE_3__*,char*,int ,int ) ;

void OpenFilesScreen_draw(InfoScreen* this) {
   InfoScreen_drawTitled(this, "Snapshot of files open in process %d - %s", ((OpenFilesScreen*)this)->pid, this->process->comm);
}
