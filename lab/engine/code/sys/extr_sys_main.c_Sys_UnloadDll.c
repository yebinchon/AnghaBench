
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*) ;
 int Sys_UnloadLibrary (void*) ;

void Sys_UnloadDll( void *dllHandle )
{
 if( !dllHandle )
 {
  Com_Printf("Sys_UnloadDll(NULL)\n");
  return;
 }

 Sys_UnloadLibrary(dllHandle);
}
