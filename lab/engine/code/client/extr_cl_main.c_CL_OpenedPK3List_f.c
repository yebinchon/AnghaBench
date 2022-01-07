
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,int ) ;
 int FS_LoadedPakNames () ;

void CL_OpenedPK3List_f( void ) {
 Com_Printf("Opened PK3 Names: %s\n", FS_LoadedPakNames());
}
