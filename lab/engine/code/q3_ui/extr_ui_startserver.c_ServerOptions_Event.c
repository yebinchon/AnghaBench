
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ menucommon_s ;
 int QM_ACTIVATED ;
 int ServerOptions_SetPlayerItems () ;
 int ServerOptions_Start () ;
 int UI_PopMenu () ;

__attribute__((used)) static void ServerOptions_Event( void* ptr, int event ) {
 switch( ((menucommon_s*)ptr)->id ) {




 case 129:
  if( event != QM_ACTIVATED ) {
   break;
  }
  ServerOptions_SetPlayerItems();
  break;

 case 130:
 case 132:
  ServerOptions_SetPlayerItems();
  break;
 case 131:
  if( event != QM_ACTIVATED ) {
   break;
  }
  ServerOptions_Start();
  break;

 case 128:
  if( event != QM_ACTIVATED ) {
   break;
  }
  break;
 case 133:
  if( event != QM_ACTIVATED ) {
   break;
  }
  UI_PopMenu();
  break;
 }
}
