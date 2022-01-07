
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int inc; TYPE_1__* process; } ;
struct TYPE_4__ {int comm; int pid; } ;
typedef TYPE_2__ InfoScreen ;


 int COLS ;
 int * CRT_colors ;
 size_t DEFAULT_COLOR ;
 int IncSet_drawBar (int ) ;
 size_t PANEL_HEADER_FOCUS ;
 int attrset (int ) ;
 int mvhline (int ,int ,char,int ) ;
 int mvprintw (int ,int ,char*,int ,int ) ;

void TraceScreen_draw(InfoScreen* this) {
   attrset(CRT_colors[PANEL_HEADER_FOCUS]);
   mvhline(0, 0, ' ', COLS);
   mvprintw(0, 0, "Trace of process %d - %s", this->process->pid, this->process->comm);
   attrset(CRT_colors[DEFAULT_COLOR]);
   IncSet_drawBar(this->inc);
}
