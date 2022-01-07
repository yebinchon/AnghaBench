
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;


 int MSG_ReadBits (int *,int) ;
 int* kbitmask ;

int MSG_ReadDeltaKey( msg_t *msg, int key, int oldV, int bits ) {
 if ( MSG_ReadBits( msg, 1 ) ) {
  return MSG_ReadBits( msg, bits ) ^ (key & kbitmask[ bits - 1 ]);
 }
 return oldV;
}
