
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* mouseDx; size_t mouseIndex; int* mouseDy; } ;


 int CG_MOUSE_EVENT ;
 int KEYCATCH_CGAME ;
 int KEYCATCH_UI ;
 int Key_GetCatcher () ;
 int UI_MOUSE_EVENT ;
 int VM_Call (int ,int ,int,int) ;
 int cgvm ;
 TYPE_1__ cl ;
 int uivm ;

void CL_MouseEvent( int dx, int dy, int time ) {
 if ( Key_GetCatcher( ) & KEYCATCH_UI ) {
  VM_Call( uivm, UI_MOUSE_EVENT, dx, dy );
 } else if (Key_GetCatcher( ) & KEYCATCH_CGAME) {
  VM_Call (cgvm, CG_MOUSE_EVENT, dx, dy);
 } else {
  cl.mouseDx[cl.mouseIndex] += dx;
  cl.mouseDy[cl.mouseIndex] += dy;
 }
}
