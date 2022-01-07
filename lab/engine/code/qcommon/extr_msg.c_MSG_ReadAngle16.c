
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;


 int MSG_ReadShort (int *) ;
 float SHORT2ANGLE (int ) ;

float MSG_ReadAngle16( msg_t *msg ) {
 return SHORT2ANGLE(MSG_ReadShort(msg));
}
