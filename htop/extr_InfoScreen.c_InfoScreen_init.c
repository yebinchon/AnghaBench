
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* items; } ;
struct TYPE_8__ {TYPE_3__* display; int lines; int inc; int * process; } ;
struct TYPE_7__ {int type; } ;
typedef int Process ;
typedef TYPE_2__ InfoScreen ;
typedef int FunctionBar ;


 int COLS ;
 int Class (int ) ;
 int DEFAULT_SIZE ;
 int * FunctionBar_new (int ,int ,int ) ;
 int IncSet_new (int *) ;
 int InfoScreenEvents ;
 int InfoScreenFunctions ;
 int InfoScreenKeys ;
 int ListItem ;
 TYPE_3__* Panel_new (int ,int,int ,int,int,int ,int *) ;
 int Panel_setHeader (TYPE_3__*,char*) ;
 int Vector_new (int ,int,int ) ;

InfoScreen* InfoScreen_init(InfoScreen* this, Process* process, FunctionBar* bar, int height, char* panelHeader) {
   this->process = process;
   if (!bar) {
      bar = FunctionBar_new(InfoScreenFunctions, InfoScreenKeys, InfoScreenEvents);
   }
   this->display = Panel_new(0, 1, COLS, height, 0, Class(ListItem), bar);
   this->inc = IncSet_new(bar);
   this->lines = Vector_new(this->display->items->type, 1, DEFAULT_SIZE);
   Panel_setHeader(this->display, panelHeader);
   return this;
}
