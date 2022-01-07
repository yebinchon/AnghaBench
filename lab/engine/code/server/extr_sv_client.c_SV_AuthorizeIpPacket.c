
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int netadr_t ;
struct TYPE_5__ {int challenge; int adr; int clientChallenge; int pingTime; } ;
typedef TYPE_1__ challenge_t ;
struct TYPE_7__ {int integer; } ;
struct TYPE_6__ {int time; TYPE_1__* challenges; int authorizeAddress; } ;


 char* Cmd_Argv (int) ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int Com_Printf (char*) ;
 int MAX_CHALLENGES ;
 int NET_CompareBaseAdr (int ,int ) ;
 int NET_OutOfBandPrint (int ,int ,char*,...) ;
 int NS_SERVER ;
 int Q_stricmp (char*,char*) ;
 int atoi (char*) ;
 TYPE_3__* com_protocol ;
 TYPE_2__ svs ;

void SV_AuthorizeIpPacket( netadr_t from ) {
 int challenge;
 int i;
 char *s;
 char *r;
 challenge_t *challengeptr;

 if ( !NET_CompareBaseAdr( from, svs.authorizeAddress ) ) {
  Com_Printf( "SV_AuthorizeIpPacket: not from authorize server\n" );
  return;
 }

 challenge = atoi( Cmd_Argv( 1 ) );

 for (i = 0 ; i < MAX_CHALLENGES ; i++) {
  if ( svs.challenges[i].challenge == challenge ) {
   break;
  }
 }
 if ( i == MAX_CHALLENGES ) {
  Com_Printf( "SV_AuthorizeIpPacket: challenge not found\n" );
  return;
 }

 challengeptr = &svs.challenges[i];


 challengeptr->pingTime = svs.time;
 s = Cmd_Argv( 2 );
 r = Cmd_Argv( 3 );

 if ( !Q_stricmp( s, "demo" ) ) {

  NET_OutOfBandPrint( NS_SERVER, challengeptr->adr, "print\nServer is not a demo server\n" );

  Com_Memset( challengeptr, 0, sizeof( *challengeptr ) );
  return;
 }
 if ( !Q_stricmp( s, "accept" ) ) {
  NET_OutOfBandPrint(NS_SERVER, challengeptr->adr,
   "challengeResponse %d %d %d", challengeptr->challenge, challengeptr->clientChallenge, com_protocol->integer);
  return;
 }
 if ( !Q_stricmp( s, "unknown" ) ) {
  if (!r) {
   NET_OutOfBandPrint( NS_SERVER, challengeptr->adr, "print\nAwaiting CD key authorization\n" );
  } else {
   NET_OutOfBandPrint( NS_SERVER, challengeptr->adr, "print\n%s\n", r);
  }

  Com_Memset( challengeptr, 0, sizeof( *challengeptr ) );
  return;
 }


 if (!r) {
  NET_OutOfBandPrint( NS_SERVER, challengeptr->adr, "print\nSomeone is using this CD Key\n" );
 } else {
  NET_OutOfBandPrint( NS_SERVER, challengeptr->adr, "print\n%s\n", r );
 }


 Com_Memset( challengeptr, 0, sizeof(*challengeptr) );
}
