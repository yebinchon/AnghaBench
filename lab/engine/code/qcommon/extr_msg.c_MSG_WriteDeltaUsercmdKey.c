
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int serverTime; scalar_t__* angles; scalar_t__ forwardmove; scalar_t__ rightmove; scalar_t__ upmove; scalar_t__ buttons; scalar_t__ weapon; } ;
typedef TYPE_1__ usercmd_t ;
typedef int msg_t ;


 int MSG_WriteBits (int *,int,int) ;
 int MSG_WriteDeltaKey (int *,int,scalar_t__,scalar_t__,int) ;
 int oldsize ;

void MSG_WriteDeltaUsercmdKey( msg_t *msg, int key, usercmd_t *from, usercmd_t *to ) {
 if ( to->serverTime - from->serverTime < 256 ) {
  MSG_WriteBits( msg, 1, 1 );
  MSG_WriteBits( msg, to->serverTime - from->serverTime, 8 );
 } else {
  MSG_WriteBits( msg, 0, 1 );
  MSG_WriteBits( msg, to->serverTime, 32 );
 }
 if (from->angles[0] == to->angles[0] &&
  from->angles[1] == to->angles[1] &&
  from->angles[2] == to->angles[2] &&
  from->forwardmove == to->forwardmove &&
  from->rightmove == to->rightmove &&
  from->upmove == to->upmove &&
  from->buttons == to->buttons &&
  from->weapon == to->weapon) {
   MSG_WriteBits( msg, 0, 1 );
   oldsize += 7;
   return;
 }
 key ^= to->serverTime;
 MSG_WriteBits( msg, 1, 1 );
 MSG_WriteDeltaKey( msg, key, from->angles[0], to->angles[0], 16 );
 MSG_WriteDeltaKey( msg, key, from->angles[1], to->angles[1], 16 );
 MSG_WriteDeltaKey( msg, key, from->angles[2], to->angles[2], 16 );
 MSG_WriteDeltaKey( msg, key, from->forwardmove, to->forwardmove, 8 );
 MSG_WriteDeltaKey( msg, key, from->rightmove, to->rightmove, 8 );
 MSG_WriteDeltaKey( msg, key, from->upmove, to->upmove, 8 );
 MSG_WriteDeltaKey( msg, key, from->buttons, to->buttons, 16 );
 MSG_WriteDeltaKey( msg, key, from->weapon, to->weapon, 8 );
}
