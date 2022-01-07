
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ downloadCount; scalar_t__ downloadBlock; int downloadTempName; int downloadName; } ;
struct TYPE_3__ {int realtime; } ;


 int CL_AddReliableCommand (int ,int ) ;
 int Com_DPrintf (char*,char const*,char const*) ;
 int Com_sprintf (int ,int,char*,char const*) ;
 int Cvar_Set (char*,char const*) ;
 int Cvar_SetValue (char*,int ) ;
 int Q_strncpyz (int ,char const*,int) ;
 TYPE_2__ clc ;
 TYPE_1__ cls ;
 int qfalse ;
 int va (char*,char const*) ;

void CL_BeginDownload( const char *localName, const char *remoteName ) {

 Com_DPrintf("***** CL_BeginDownload *****\n"
    "Localname: %s\n"
    "Remotename: %s\n"
    "****************************\n", localName, remoteName);

 Q_strncpyz ( clc.downloadName, localName, sizeof(clc.downloadName) );
 Com_sprintf( clc.downloadTempName, sizeof(clc.downloadTempName), "%s.tmp", localName );


 Cvar_Set( "cl_downloadName", remoteName );
 Cvar_Set( "cl_downloadSize", "0" );
 Cvar_Set( "cl_downloadCount", "0" );
 Cvar_SetValue( "cl_downloadTime", cls.realtime );

 clc.downloadBlock = 0;
 clc.downloadCount = 0;

 CL_AddReliableCommand(va("download %s", remoteName), qfalse);
}
