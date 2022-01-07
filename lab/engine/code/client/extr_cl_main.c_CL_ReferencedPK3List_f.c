
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,int ) ;
 int FS_ReferencedPakNames () ;

void CL_ReferencedPK3List_f( void ) {
 Com_Printf("Referenced PK3 Names: %s\n", FS_ReferencedPakNames());
}
