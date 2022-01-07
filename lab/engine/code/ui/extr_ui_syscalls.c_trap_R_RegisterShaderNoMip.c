
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qhandle_t ;


 int UI_R_REGISTERSHADERNOMIP ;
 int syscall (int ,char const*) ;

qhandle_t trap_R_RegisterShaderNoMip( const char *name ) {
 return syscall( UI_R_REGISTERSHADERNOMIP, name );
}
