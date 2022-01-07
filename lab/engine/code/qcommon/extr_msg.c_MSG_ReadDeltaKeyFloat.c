
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int msg_t ;
struct TYPE_2__ {int i; float f; } ;
typedef TYPE_1__ floatint_t ;


 int MSG_ReadBits (int *,int) ;

float MSG_ReadDeltaKeyFloat( msg_t *msg, int key, float oldV ) {
 if ( MSG_ReadBits( msg, 1 ) ) {
  floatint_t fi;

  fi.i = MSG_ReadBits( msg, 32 ) ^ key;
  return fi.f;
 }
 return oldV;
}
