
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_R_REMAP_SHADER ;
 int syscall (int ,char const*,char const*,char const*) ;

void trap_R_RemapShader( const char *oldShader, const char *newShader, const char *timeOffset ) {
 syscall( UI_R_REMAP_SHADER, oldShader, newShader, timeOffset );
}
