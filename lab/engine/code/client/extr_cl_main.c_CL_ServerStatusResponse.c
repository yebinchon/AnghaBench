
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int retrieved; scalar_t__ print; int pending; int address; int time; int * string; } ;
typedef TYPE_1__ serverStatus_t ;
typedef int netadr_t ;
typedef int msg_t ;


 int Com_Milliseconds () ;
 int Com_Printf (char*,...) ;
 int Com_sprintf (int *,int,char*,...) ;
 int MAX_INFO_STRING ;
 int MAX_SERVERSTATUSREQUESTS ;
 char* MSG_ReadStringLine (int *) ;
 scalar_t__ NET_CompareAdr (int ,int ) ;
 TYPE_1__* cl_serverStatusList ;
 int qfalse ;
 int qtrue ;
 int sscanf (char*,char*,int*,int*) ;
 char* strchr (char*,char) ;
 int strlen (int *) ;

void CL_ServerStatusResponse( netadr_t from, msg_t *msg ) {
 char *s;
 char info[MAX_INFO_STRING];
 int i, l, score, ping;
 int len;
 serverStatus_t *serverStatus;

 serverStatus = ((void*)0);
 for (i = 0; i < MAX_SERVERSTATUSREQUESTS; i++) {
  if ( NET_CompareAdr( from, cl_serverStatusList[i].address ) ) {
   serverStatus = &cl_serverStatusList[i];
   break;
  }
 }

 if (!serverStatus) {
  return;
 }

 s = MSG_ReadStringLine( msg );

 len = 0;
 Com_sprintf(&serverStatus->string[len], sizeof(serverStatus->string)-len, "%s", s);

 if (serverStatus->print) {
  Com_Printf("Server settings:\n");

  while (*s) {
   for (i = 0; i < 2 && *s; i++) {
    if (*s == '\\')
     s++;
    l = 0;
    while (*s) {
     info[l++] = *s;
     if (l >= MAX_INFO_STRING-1)
      break;
     s++;
     if (*s == '\\') {
      break;
     }
    }
    info[l] = '\0';
    if (i) {
     Com_Printf("%s\n", info);
    }
    else {
     Com_Printf("%-24s", info);
    }
   }
  }
 }

 len = strlen(serverStatus->string);
 Com_sprintf(&serverStatus->string[len], sizeof(serverStatus->string)-len, "\\");

 if (serverStatus->print) {
  Com_Printf("\nPlayers:\n");
  Com_Printf("num: score: ping: name:\n");
 }
 for (i = 0, s = MSG_ReadStringLine( msg ); *s; s = MSG_ReadStringLine( msg ), i++) {

  len = strlen(serverStatus->string);
  Com_sprintf(&serverStatus->string[len], sizeof(serverStatus->string)-len, "\\%s", s);

  if (serverStatus->print) {
   score = ping = 0;
   sscanf(s, "%d %d", &score, &ping);
   s = strchr(s, ' ');
   if (s)
    s = strchr(s+1, ' ');
   if (s)
    s++;
   else
    s = "unknown";
   Com_Printf("%-2d   %-3d    %-3d   %s\n", i, score, ping, s );
  }
 }
 len = strlen(serverStatus->string);
 Com_sprintf(&serverStatus->string[len], sizeof(serverStatus->string)-len, "\\");

 serverStatus->time = Com_Milliseconds();
 serverStatus->address = from;
 serverStatus->pending = qfalse;
 if (serverStatus->print) {
  serverStatus->retrieved = qtrue;
 }
}
