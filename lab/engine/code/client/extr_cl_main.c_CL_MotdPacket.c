
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int netadr_t ;
struct TYPE_2__ {int updateInfoString; int updateChallenge; int updateServer; } ;


 char* Cmd_Argv (int) ;
 int Cvar_Set (char*,char*) ;
 char* Info_ValueForKey (char*,char*) ;
 int NET_CompareAdr (int ,int ) ;
 int Q_strncpyz (int ,char*,int) ;
 TYPE_1__ cls ;
 scalar_t__ strcmp (char*,int ) ;

void CL_MotdPacket( netadr_t from ) {
}
