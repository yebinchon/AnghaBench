
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cgameStarted; } ;


 int CG_SHUTDOWN ;
 int KEYCATCH_CGAME ;
 int Key_GetCatcher () ;
 int Key_SetCatcher (int) ;
 int VM_Call (int *,int ) ;
 int VM_Free (int *) ;
 int * cgvm ;
 TYPE_1__ cls ;
 int qfalse ;

void CL_ShutdownCGame( void ) {
 Key_SetCatcher( Key_GetCatcher( ) & ~KEYCATCH_CGAME );
 cls.cgameStarted = qfalse;
 if ( !cgvm ) {
  return;
 }
 VM_Call( cgvm, CG_SHUTDOWN );
 VM_Free( cgvm );
 cgvm = ((void*)0);
}
