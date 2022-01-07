
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t selectedmodel; int * botnames; } ;
struct TYPE_3__ {int newBotName; int newBot; } ;


 size_t MAX_MODELSPERPAGE ;
 int QM_ACTIVATED ;
 int Q_strncpyz (int ,int ,int) ;
 int UI_PopMenu () ;
 TYPE_2__ botSelectInfo ;
 int qtrue ;
 TYPE_1__ s_serveroptions ;

__attribute__((used)) static void UI_BotSelectMenu_SelectEvent( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }
 UI_PopMenu();

 s_serveroptions.newBot = qtrue;
 Q_strncpyz( s_serveroptions.newBotName, botSelectInfo.botnames[botSelectInfo.selectedmodel % MAX_MODELSPERPAGE], 16 );
}
