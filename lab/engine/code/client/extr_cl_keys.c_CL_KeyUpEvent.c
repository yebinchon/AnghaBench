
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int down; scalar_t__ repeats; } ;


 int CG_KEY_EVENT ;
 int CL_ParseBinding (int,int ,unsigned int) ;
 int KEYCATCH_CGAME ;
 int KEYCATCH_UI ;
 int K_CONSOLE ;
 int K_ESCAPE ;
 size_t K_SHIFT ;
 int Key_GetCatcher () ;
 int UI_KEY_EVENT ;
 int VM_Call (scalar_t__,int ,int,int ) ;
 scalar_t__ anykeydown ;
 scalar_t__ cgvm ;
 TYPE_1__* keys ;
 int qfalse ;
 scalar_t__ uivm ;

void CL_KeyUpEvent( int key, unsigned time )
{
 keys[key].repeats = 0;
 keys[key].down = qfalse;
 anykeydown--;

 if (anykeydown < 0) {
  anykeydown = 0;
 }


 if ( key == K_CONSOLE || ( key == K_ESCAPE && keys[K_SHIFT].down ) )
  return;







 CL_ParseBinding( key, qfalse, time );

 if ( Key_GetCatcher( ) & KEYCATCH_UI && uivm ) {
  VM_Call( uivm, UI_KEY_EVENT, key, qfalse );
 } else if ( Key_GetCatcher( ) & KEYCATCH_CGAME && cgvm ) {
  VM_Call( cgvm, CG_KEY_EVENT, key, qfalse );
 }
}
