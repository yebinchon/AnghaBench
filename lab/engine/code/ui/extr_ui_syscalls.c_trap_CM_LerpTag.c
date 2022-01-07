
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int orientation_t ;
typedef int clipHandle_t ;


 int PASSFLOAT (float) ;
 int UI_CM_LERPTAG ;
 int syscall (int ,int *,int ,int,int,int ,char const*) ;

int trap_CM_LerpTag( orientation_t *tag, clipHandle_t mod, int startFrame, int endFrame, float frac, const char *tagName ) {
 return syscall( UI_CM_LERPTAG, tag, mod, startFrame, endFrame, PASSFLOAT(frac), tagName );
}
