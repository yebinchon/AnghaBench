
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int modelpage; int numpages; int selectedmodel; } ;


 int MAX_MODELSPERPAGE ;
 int QM_ACTIVATED ;
 int UI_BotSelectMenu_UpdateGrid () ;
 TYPE_1__ botSelectInfo ;

__attribute__((used)) static void UI_BotSelectMenu_RightEvent( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }
 if( botSelectInfo.modelpage < botSelectInfo.numpages - 1 ) {
  botSelectInfo.modelpage++;
  botSelectInfo.selectedmodel = botSelectInfo.modelpage * MAX_MODELSPERPAGE;
  UI_BotSelectMenu_UpdateGrid();
 }
}
