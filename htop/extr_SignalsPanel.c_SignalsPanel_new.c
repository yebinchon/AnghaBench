
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int number; } ;
typedef int Panel ;
typedef int Object ;


 int Class (int ) ;
 int FunctionBar_newEnterEsc (char*,char*) ;
 int ListItem ;
 scalar_t__ ListItem_new (char*,int) ;
 int * Panel_new (int,int,int,int,int,int ,int ) ;
 int Panel_set (int *,unsigned int,int *) ;
 int Panel_setHeader (int *,char*) ;
 int Panel_setSelected (int *,int) ;
 unsigned int Platform_numberOfSignals ;
 TYPE_1__* Platform_signals ;
 int SIGRTMAX ;
 int SIGRTMIN ;
 int SIGTERM ;
 int xSnprintf (char*,int,char*,int,int) ;

Panel* SignalsPanel_new() {
   Panel* this = Panel_new(1, 1, 1, 1, 1, Class(ListItem), FunctionBar_newEnterEsc("Send   ", "Cancel "));
   const int defaultSignal = SIGTERM;
   int defaultPosition = 15;
   unsigned int i;
   for (i = 0; i < Platform_numberOfSignals; i++) {
      Panel_set(this, i, (Object*) ListItem_new(Platform_signals[i].name, Platform_signals[i].number));

      if (Platform_signals[i].number == defaultSignal) {
         defaultPosition = i;
      }
   }
   Panel_setHeader(this, "Send signal:");
   Panel_setSelected(this, defaultPosition);
   return this;
}
