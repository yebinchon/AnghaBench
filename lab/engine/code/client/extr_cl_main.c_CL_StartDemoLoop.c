
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cbuf_AddText (char*) ;
 int Key_SetCatcher (int ) ;

void CL_StartDemoLoop( void ) {

 Cbuf_AddText ("d1\n");
 Key_SetCatcher( 0 );
}
