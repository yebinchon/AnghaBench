
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_R_LOADWORLDMAP ;
 int syscall (int ,char const*) ;

void trap_R_LoadWorldMap( const char *mapname ) {
 syscall( CG_R_LOADWORLDMAP, mapname );
}
