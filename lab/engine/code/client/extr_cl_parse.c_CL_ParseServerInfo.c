
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* stringData; int* stringOffsets; } ;
struct TYPE_6__ {TYPE_1__ gameState; } ;
struct TYPE_5__ {int sv_dlURL; int sv_allowDownload; } ;


 size_t CS_SERVERINFO ;
 int Info_ValueForKey (char const*,char*) ;
 int Q_strncpyz (int ,int ,int) ;
 int atoi (int ) ;
 TYPE_3__ cl ;
 TYPE_2__ clc ;

__attribute__((used)) static void CL_ParseServerInfo(void)
{
 const char *serverInfo;

 serverInfo = cl.gameState.stringData
  + cl.gameState.stringOffsets[ CS_SERVERINFO ];

 clc.sv_allowDownload = atoi(Info_ValueForKey(serverInfo,
  "sv_allowDownload"));
 Q_strncpyz(clc.sv_dlURL,
  Info_ValueForKey(serverInfo, "sv_dlURL"),
  sizeof(clc.sv_dlURL));
}
