
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int msg_t ;
struct TYPE_2__ {float f; int i; } ;
typedef TYPE_1__ floatint_t ;


 int MSG_WriteBits (int *,int ,int) ;

void MSG_WriteFloat( msg_t *sb, float f ) {
 floatint_t dat;
 dat.f = f;
 MSG_WriteBits( sb, dat.i, 32 );
}
