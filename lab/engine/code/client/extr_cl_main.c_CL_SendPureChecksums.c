
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cMsg ;
struct TYPE_2__ {int serverId; } ;


 int CL_AddReliableCommand (char*,int ) ;
 int Com_sprintf (char*,int,char*,int ,int ) ;
 int FS_ReferencedPakPureChecksums () ;
 int MAX_INFO_VALUE ;
 TYPE_1__ cl ;
 int qfalse ;

void CL_SendPureChecksums( void ) {
 char cMsg[MAX_INFO_VALUE];


 Com_sprintf(cMsg, sizeof(cMsg), "cp %d %s", cl.serverId, FS_ReferencedPakPureChecksums());

 CL_AddReliableCommand(cMsg, qfalse);
}
