
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int port; } ;
struct TYPE_4__ {int time; int start; int info; TYPE_2__ adr; } ;


 int CL_SetServerInfoByAddress (TYPE_2__,int ,int) ;
 int Cvar_VariableIntegerValue (char*) ;
 int MAX_PINGREQUESTS ;
 char* NET_AdrToStringwPort (TYPE_2__) ;
 int Q_strncpyz (char*,char const*,int) ;
 int Sys_Milliseconds () ;
 TYPE_1__* cl_pinglist ;

void CL_GetPing( int n, char *buf, int buflen, int *pingtime )
{
 const char *str;
 int time;
 int maxPing;

 if (n < 0 || n >= MAX_PINGREQUESTS || !cl_pinglist[n].adr.port)
 {

  buf[0] = '\0';
  *pingtime = 0;
  return;
 }

 str = NET_AdrToStringwPort( cl_pinglist[n].adr );
 Q_strncpyz( buf, str, buflen );

 time = cl_pinglist[n].time;
 if (!time)
 {

  time = Sys_Milliseconds() - cl_pinglist[n].start;
  maxPing = Cvar_VariableIntegerValue( "cl_maxPing" );
  if( maxPing < 100 ) {
   maxPing = 100;
  }
  if (time < maxPing)
  {

   time = 0;
  }
 }

 CL_SetServerInfoByAddress(cl_pinglist[n].adr, cl_pinglist[n].info, cl_pinglist[n].time);

 *pingtime = time;
}
