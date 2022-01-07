
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_PC_LOAD_SOURCE ;
 int syscall (int ,char const*) ;

int trap_PC_LoadSource( const char *filename ) {
 return syscall( CG_PC_LOAD_SOURCE, filename );
}
