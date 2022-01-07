
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;


 int ANGLE2SHORT (float) ;
 int MSG_WriteShort (int *,int ) ;

void MSG_WriteAngle16( msg_t *sb, float f ) {
 MSG_WriteShort (sb, ANGLE2SHORT(f));
}
