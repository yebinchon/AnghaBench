
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int msg_t ;
struct TYPE_2__ {float f; int i; } ;
typedef TYPE_1__ floatint_t ;


 int MSG_WriteBits (int *,int,int) ;

void MSG_WriteDeltaKeyFloat( msg_t *msg, int key, float oldV, float newV ) {
 floatint_t fi;
 if ( oldV == newV ) {
  MSG_WriteBits( msg, 0, 1 );
  return;
 }
 fi.f = newV;
 MSG_WriteBits( msg, 1, 1 );
 MSG_WriteBits( msg, fi.i ^ key, 32 );
}
