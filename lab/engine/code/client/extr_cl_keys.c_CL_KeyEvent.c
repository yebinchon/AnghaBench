
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;


 int CL_KeyDownEvent (int,unsigned int) ;
 int CL_KeyUpEvent (int,unsigned int) ;

void CL_KeyEvent (int key, qboolean down, unsigned time) {
 if( down )
  CL_KeyDownEvent( key, time );
 else
  CL_KeyUpEvent( key, time );
}
