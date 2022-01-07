
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_10__ {size_t sock; int incomingSequence; int dropped; int fragmentSequence; int fragmentLength; scalar_t__ fragmentBuffer; int remoteAddress; int challenge; int compat; } ;
typedef TYPE_1__ netchan_t ;
struct TYPE_11__ {int cursize; int readcount; int maxsize; int bit; scalar_t__ data; } ;
typedef TYPE_2__ msg_t ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;


 int Com_Memcpy (scalar_t__,scalar_t__,int) ;
 int Com_Printf (char*,int ,...) ;
 int FRAGMENT_BIT ;
 int FRAGMENT_SIZE ;
 int LittleLong (int) ;
 int MSG_BeginReadingOOB (TYPE_2__*) ;
 int MSG_ReadLong (TYPE_2__*) ;
 int MSG_ReadShort (TYPE_2__*) ;
 int NETCHAN_GENCHECKSUM (int ,int) ;
 int NET_AdrToString (int ) ;
 size_t NS_SERVER ;
 int * netsrcString ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_4__* showdrop ;
 TYPE_3__* showpackets ;

qboolean Netchan_Process( netchan_t *chan, msg_t *msg ) {
 int sequence;
 int fragmentStart, fragmentLength;
 qboolean fragmented;





 MSG_BeginReadingOOB( msg );
 sequence = MSG_ReadLong( msg );


 if ( sequence & FRAGMENT_BIT ) {
  sequence &= ~FRAGMENT_BIT;
  fragmented = qtrue;
 } else {
  fragmented = qfalse;
 }


 if ( chan->sock == NS_SERVER ) {
  MSG_ReadShort( msg );
 }




 {
  int checksum = MSG_ReadLong(msg);


  if(NETCHAN_GENCHECKSUM(chan->challenge, sequence) != checksum)
   return qfalse;
 }


 if ( fragmented ) {
  fragmentStart = MSG_ReadShort( msg );
  fragmentLength = MSG_ReadShort( msg );
 } else {
  fragmentStart = 0;
  fragmentLength = 0;
 }

 if ( showpackets->integer ) {
  if ( fragmented ) {
   Com_Printf( "%s recv %4i : s=%i fragment=%i,%i\n"
    , netsrcString[ chan->sock ]
    , msg->cursize
    , sequence
    , fragmentStart, fragmentLength );
  } else {
   Com_Printf( "%s recv %4i : s=%i\n"
    , netsrcString[ chan->sock ]
    , msg->cursize
    , sequence );
  }
 }




 if ( sequence <= chan->incomingSequence ) {
  if ( showdrop->integer || showpackets->integer ) {
   Com_Printf( "%s:Out of order packet %i at %i\n"
    , NET_AdrToString( chan->remoteAddress )
    , sequence
    , chan->incomingSequence );
  }
  return qfalse;
 }




 chan->dropped = sequence - (chan->incomingSequence+1);
 if ( chan->dropped > 0 ) {
  if ( showdrop->integer || showpackets->integer ) {
   Com_Printf( "%s:Dropped %i packets at %i\n"
   , NET_AdrToString( chan->remoteAddress )
   , chan->dropped
   , sequence );
  }
 }






 if ( fragmented ) {





  if ( sequence != chan->fragmentSequence ) {
   chan->fragmentSequence = sequence;
   chan->fragmentLength = 0;
  }


  if ( fragmentStart != chan->fragmentLength ) {
   if ( showdrop->integer || showpackets->integer ) {
    Com_Printf( "%s:Dropped a message fragment\n"
    , NET_AdrToString( chan->remoteAddress ));
   }


   return qfalse;
  }


  if ( fragmentLength < 0 || msg->readcount + fragmentLength > msg->cursize ||
   chan->fragmentLength + fragmentLength > sizeof( chan->fragmentBuffer ) ) {
   if ( showdrop->integer || showpackets->integer ) {
    Com_Printf ("%s:illegal fragment length\n"
    , NET_AdrToString (chan->remoteAddress ) );
   }
   return qfalse;
  }

  Com_Memcpy( chan->fragmentBuffer + chan->fragmentLength,
   msg->data + msg->readcount, fragmentLength );

  chan->fragmentLength += fragmentLength;


  if ( fragmentLength == FRAGMENT_SIZE ) {
   return qfalse;
  }

  if ( chan->fragmentLength > msg->maxsize ) {
   Com_Printf( "%s:fragmentLength %i > msg->maxsize\n"
    , NET_AdrToString (chan->remoteAddress ),
    chan->fragmentLength );
   return qfalse;
  }




  *(int *)msg->data = LittleLong( sequence );

  Com_Memcpy( msg->data + 4, chan->fragmentBuffer, chan->fragmentLength );
  msg->cursize = chan->fragmentLength + 4;
  chan->fragmentLength = 0;
  msg->readcount = 4;
  msg->bit = 32;



  chan->incomingSequence = sequence;

  return qtrue;
 }




 chan->incomingSequence = sequence;

 return qtrue;
}
