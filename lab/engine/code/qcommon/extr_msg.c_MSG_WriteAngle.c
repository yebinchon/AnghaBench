
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;


 int MSG_WriteByte (int *,int) ;

void MSG_WriteAngle( msg_t *sb, float f ) {
 MSG_WriteByte (sb, (int)(f*256/360) & 255);
}
