
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uiStarted; } ;


 int KEYCATCH_UI ;
 int Key_GetCatcher () ;
 int Key_SetCatcher (int) ;
 int UI_SHUTDOWN ;
 int VM_Call (int *,int ) ;
 int VM_Free (int *) ;
 TYPE_1__ cls ;
 int qfalse ;
 int * uivm ;

void CL_ShutdownUI( void ) {
 Key_SetCatcher( Key_GetCatcher( ) & ~KEYCATCH_UI );
 cls.uiStarted = qfalse;
 if ( !uivm ) {
  return;
 }
 VM_Call( uivm, UI_SHUTDOWN );
 VM_Free( uivm );
 uivm = ((void*)0);
}
