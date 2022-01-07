
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* joystickAxis; } ;


 int Com_Error (int ,char*,int) ;
 int ERR_DROP ;
 int MAX_JOYSTICK_AXIS ;
 TYPE_1__ cl ;

void CL_JoystickEvent( int axis, int value, int time ) {
 if ( axis < 0 || axis >= MAX_JOYSTICK_AXIS ) {
  Com_Error( ERR_DROP, "CL_JoystickEvent: bad axis %i", axis );
 }
 cl.joystickAxis[axis] = value;
}
