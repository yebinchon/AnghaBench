
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef TYPE_2__ menutext_s ;
struct TYPE_6__ {int newBotIndex; int * playerNameBuffers; } ;


 int QM_ACTIVATED ;
 int UI_BotSelectMenu (int ) ;
 TYPE_3__ s_serveroptions ;

__attribute__((used)) static void ServerOptions_PlayerNameEvent( void* ptr, int event ) {
 int n;

 if( event != QM_ACTIVATED ) {
  return;
 }
 n = ((menutext_s*)ptr)->generic.id;
 s_serveroptions.newBotIndex = n;
 UI_BotSelectMenu( s_serveroptions.playerNameBuffers[n] );
}
