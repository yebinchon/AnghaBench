
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ port; } ;
typedef TYPE_2__ netadr_t ;
struct TYPE_9__ {TYPE_2__ remoteAddress; } ;
struct TYPE_14__ {scalar_t__ state; TYPE_1__ netchan; } ;
struct TYPE_13__ {TYPE_2__ rconAddress; } ;
struct TYPE_12__ {char* string; } ;
struct TYPE_11__ {char* string; } ;


 scalar_t__ BigShort (int ) ;
 scalar_t__ CA_CONNECTED ;
 char* Cmd_Cmd () ;
 int Com_Printf (char*) ;
 int MAX_RCON_MESSAGE ;
 int NA_UNSPEC ;
 int NET_SendPacket (int ,scalar_t__,char*,TYPE_2__) ;
 int NET_StringToAdr (char*,TYPE_2__*,int ) ;
 int NS_CLIENT ;
 int PORT_SERVER ;
 int Q_strcat (char*,int,char*) ;
 TYPE_6__ clc ;
 TYPE_5__ cls ;
 TYPE_4__* rconAddress ;
 TYPE_3__* rcon_client_password ;
 scalar_t__ strlen (char*) ;

void CL_Rcon_f( void ) {
 char message[MAX_RCON_MESSAGE];
 netadr_t to;

 if ( !rcon_client_password->string[0] ) {
  Com_Printf ("You must set 'rconpassword' before\n"
     "issuing an rcon command.\n");
  return;
 }

 message[0] = -1;
 message[1] = -1;
 message[2] = -1;
 message[3] = -1;
 message[4] = 0;

 Q_strcat (message, MAX_RCON_MESSAGE, "rcon ");

 Q_strcat (message, MAX_RCON_MESSAGE, rcon_client_password->string);
 Q_strcat (message, MAX_RCON_MESSAGE, " ");


 Q_strcat (message, MAX_RCON_MESSAGE, Cmd_Cmd()+5);

 if ( clc.state >= CA_CONNECTED ) {
  to = clc.netchan.remoteAddress;
 } else {
  if (!strlen(rconAddress->string)) {
   Com_Printf ("You must either be connected,\n"
      "or set the 'rconAddress' cvar\n"
      "to issue rcon commands\n");

   return;
  }
  NET_StringToAdr (rconAddress->string, &to, NA_UNSPEC);
  if (to.port == 0) {
   to.port = BigShort (PORT_SERVER);
  }
 }

 NET_SendPacket (NS_CLIENT, strlen(message)+1, message, to);
 cls.rconAddress = to;
}
