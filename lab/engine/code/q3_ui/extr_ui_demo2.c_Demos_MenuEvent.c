
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ menucommon_s ;
struct TYPE_6__ {size_t curvalue; int * itemnames; } ;
struct TYPE_5__ {TYPE_3__ list; } ;


 int EXEC_APPEND ;




 int K_LEFTARROW ;
 int K_RIGHTARROW ;
 int QM_ACTIVATED ;
 int ScrollList_Key (TYPE_3__*,int ) ;
 int UI_ForceMenuOff () ;
 int UI_PopMenu () ;
 TYPE_2__ s_demos ;
 int trap_Cmd_ExecuteText (int ,int ) ;
 int va (char*,int ) ;

__attribute__((used)) static void Demos_MenuEvent( void *ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 130:
  UI_ForceMenuOff ();
  trap_Cmd_ExecuteText( EXEC_APPEND, va( "demo %s\n",
        s_demos.list.itemnames[s_demos.list.curvalue]) );
  break;

 case 131:
  UI_PopMenu();
  break;

 case 129:
  ScrollList_Key( &s_demos.list, K_LEFTARROW );
  break;

 case 128:
  ScrollList_Key( &s_demos.list, K_RIGHTARROW );
  break;
 }
}
