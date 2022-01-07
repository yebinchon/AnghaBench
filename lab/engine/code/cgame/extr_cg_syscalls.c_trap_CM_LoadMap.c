
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_CM_LOADMAP ;
 int syscall (int ,char const*) ;

void trap_CM_LoadMap( const char *mapname ) {
 syscall( CG_CM_LOADMAP, mapname );
}
