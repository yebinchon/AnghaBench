
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int processes ;
typedef int DWORD ;


 int EnumProcesses (int*,int,int*) ;
 int qfalse ;
 int qtrue ;

qboolean Sys_PIDIsRunning( int pid )
{
 DWORD processes[ 1024 ];
 DWORD numBytes, numProcesses;
 int i;

 if( !EnumProcesses( processes, sizeof( processes ), &numBytes ) )
  return qfalse;

 numProcesses = numBytes / sizeof( DWORD );


 for( i = 0; i < numProcesses; i++ )
 {
  if( processes[ i ] == pid )
   return qtrue;
 }

 return qfalse;
}
