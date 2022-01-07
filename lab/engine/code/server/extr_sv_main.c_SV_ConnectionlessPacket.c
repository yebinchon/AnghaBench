
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int netadr_t ;
struct TYPE_8__ {int * data; } ;
typedef TYPE_1__ msg_t ;


 char* Cmd_Argv (int ) ;
 int Cmd_TokenizeString (char*) ;
 int Com_DPrintf (char*,int ,char*) ;
 int Huff_Decompress (TYPE_1__*,int) ;
 int MSG_BeginReadingOOB (TYPE_1__*) ;
 int MSG_ReadLong (TYPE_1__*) ;
 char* MSG_ReadStringLine (TYPE_1__*) ;
 int NET_AdrToString (int ) ;
 int Q_stricmp (char*,char*) ;
 int Q_strncmp (char*,char*,int) ;
 int SVC_Info (int ) ;
 int SVC_RemoteCommand (int ,TYPE_1__*) ;
 int SVC_Status (int ) ;
 int SV_AuthorizeIpPacket (int ) ;
 int SV_DirectConnect (int ) ;
 int SV_GetChallenge (int ) ;

__attribute__((used)) static void SV_ConnectionlessPacket( netadr_t from, msg_t *msg ) {
 char *s;
 char *c;

 MSG_BeginReadingOOB( msg );
 MSG_ReadLong( msg );

 if (!Q_strncmp("connect", (char *) &msg->data[4], 7)) {
  Huff_Decompress(msg, 12);
 }

 s = MSG_ReadStringLine( msg );
 Cmd_TokenizeString( s );

 c = Cmd_Argv(0);
 Com_DPrintf ("SV packet %s : %s\n", NET_AdrToString(from), c);

 if (!Q_stricmp(c, "getstatus")) {
  SVC_Status( from );
  } else if (!Q_stricmp(c, "getinfo")) {
  SVC_Info( from );
 } else if (!Q_stricmp(c, "getchallenge")) {
  SV_GetChallenge(from);
 } else if (!Q_stricmp(c, "connect")) {
  SV_DirectConnect( from );

 } else if (!Q_stricmp(c, "ipAuthorize")) {
  SV_AuthorizeIpPacket( from );

 } else if (!Q_stricmp(c, "rcon")) {
  SVC_RemoteCommand( from, msg );
 } else if (!Q_stricmp(c, "disconnect")) {



 } else {
  Com_DPrintf ("bad connectionless packet from %s:\n%s\n",
   NET_AdrToString (from), s);
 }
}
