
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sfxHandle_t ;
typedef int qboolean ;


 int UI_S_REGISTERSOUND ;
 int syscall (int ,char const*,int ) ;

sfxHandle_t trap_S_RegisterSound( const char *sample, qboolean compressed ) {
 return syscall( UI_S_REGISTERSOUND, sample, compressed );
}
