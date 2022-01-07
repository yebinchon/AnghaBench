
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {void** powerups; void** ammo; void** persistant; void** stats; } ;
typedef TYPE_1__ playerState_t ;
struct TYPE_16__ {int offset; int bits; int name; } ;
typedef TYPE_2__ netField_t ;
struct TYPE_17__ {scalar_t__ bit; int readcount; } ;
typedef TYPE_3__ msg_t ;
typedef int dummy ;
typedef int byte ;
struct TYPE_18__ {int integer; } ;


 int ARRAY_LEN (TYPE_2__*) ;
 int Com_Error (int ,char*) ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int Com_Printf (char*,int,...) ;
 int ERR_DROP ;
 scalar_t__ FLOAT_INT_BIAS ;
 int FLOAT_INT_BITS ;
 int GENTITYNUM_BITS ;
 int LOG (char*) ;
 int MAX_PERSISTANT ;
 int MAX_POWERUPS ;
 int MAX_STATS ;
 int MAX_WEAPONS ;
 int MSG_ReadBits (TYPE_3__*,int) ;
 int MSG_ReadByte (TYPE_3__*) ;
 void* MSG_ReadLong (TYPE_3__*) ;
 void* MSG_ReadShort (TYPE_3__*) ;
 TYPE_5__* cl_shownet ;
 TYPE_2__* playerStateFields ;

void MSG_ReadDeltaPlayerstate (msg_t *msg, playerState_t *from, playerState_t *to ) {
 int i, lc;
 int bits;
 netField_t *field;
 int numFields;
 int startBit, endBit;
 int print;
 int *fromF, *toF;
 int trunc;
 playerState_t dummy;

 if ( !from ) {
  from = &dummy;
  Com_Memset( &dummy, 0, sizeof( dummy ) );
 }
 *to = *from;

 if ( msg->bit == 0 ) {
  startBit = msg->readcount * 8 - GENTITYNUM_BITS;
 } else {
  startBit = ( msg->readcount - 1 ) * 8 + msg->bit - GENTITYNUM_BITS;
 }



 if ( cl_shownet && ( cl_shownet->integer >= 2 || cl_shownet->integer == -2 ) ) {
  print = 1;
  Com_Printf( "%3i: playerstate ", msg->readcount );
 } else {
  print = 0;
 }

 numFields = ARRAY_LEN( playerStateFields );
 lc = MSG_ReadByte(msg);

 if ( lc > numFields || lc < 0 ) {
  Com_Error( ERR_DROP, "invalid playerState field count" );
 }

 for ( i = 0, field = playerStateFields ; i < lc ; i++, field++ ) {
  fromF = (int *)( (byte *)from + field->offset );
  toF = (int *)( (byte *)to + field->offset );

  if ( ! MSG_ReadBits( msg, 1 ) ) {

   *toF = *fromF;
  } else {
   if ( field->bits == 0 ) {

    if ( MSG_ReadBits( msg, 1 ) == 0 ) {

     trunc = MSG_ReadBits( msg, FLOAT_INT_BITS );

     trunc -= FLOAT_INT_BIAS;
     *(float *)toF = trunc;
     if ( print ) {
      Com_Printf( "%s:%i ", field->name, trunc );
     }
    } else {

     *toF = MSG_ReadBits( msg, 32 );
     if ( print ) {
      Com_Printf( "%s:%f ", field->name, *(float *)toF );
     }
    }
   } else {

    *toF = MSG_ReadBits( msg, field->bits );
    if ( print ) {
     Com_Printf( "%s:%i ", field->name, *toF );
    }
   }
  }
 }
 for ( i=lc,field = &playerStateFields[lc];i<numFields; i++, field++) {
  fromF = (int *)( (byte *)from + field->offset );
  toF = (int *)( (byte *)to + field->offset );

  *toF = *fromF;
 }



 if (MSG_ReadBits( msg, 1 ) ) {

  if ( MSG_ReadBits( msg, 1 ) ) {
   LOG("PS_STATS");
   bits = MSG_ReadBits (msg, MAX_STATS);
   for (i=0 ; i<MAX_STATS ; i++) {
    if (bits & (1<<i) ) {
     to->stats[i] = MSG_ReadShort(msg);
    }
   }
  }


  if ( MSG_ReadBits( msg, 1 ) ) {
   LOG("PS_PERSISTANT");
   bits = MSG_ReadBits (msg, MAX_PERSISTANT);
   for (i=0 ; i<MAX_PERSISTANT ; i++) {
    if (bits & (1<<i) ) {
     to->persistant[i] = MSG_ReadLong(msg);
    }
   }
  }


  if ( MSG_ReadBits( msg, 1 ) ) {
   LOG("PS_AMMO");
   bits = MSG_ReadBits (msg, MAX_WEAPONS);
   for (i=0 ; i<MAX_WEAPONS ; i++) {
    if (bits & (1<<i) ) {
     to->ammo[i] = MSG_ReadShort(msg);
    }
   }
  }


  if ( MSG_ReadBits( msg, 1 ) ) {
   LOG("PS_POWERUPS");
   bits = MSG_ReadBits (msg, MAX_POWERUPS);
   for (i=0 ; i<MAX_POWERUPS ; i++) {
    if (bits & (1<<i) ) {
     to->powerups[i] = MSG_ReadLong(msg);
    }
   }
  }
 }

 if ( print ) {
  if ( msg->bit == 0 ) {
   endBit = msg->readcount * 8 - GENTITYNUM_BITS;
  } else {
   endBit = ( msg->readcount - 1 ) * 8 + msg->bit - GENTITYNUM_BITS;
  }
  Com_Printf( " (%i bits)\n", endBit - startBit );
 }
}
