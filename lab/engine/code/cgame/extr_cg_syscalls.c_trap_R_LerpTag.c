
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int orientation_t ;
typedef int clipHandle_t ;


 int CG_R_LERPTAG ;
 int PASSFLOAT (float) ;
 int syscall (int ,int *,int ,int,int,int ,char const*) ;

int trap_R_LerpTag( orientation_t *tag, clipHandle_t mod, int startFrame, int endFrame,
        float frac, const char *tagName ) {
 return syscall( CG_R_LERPTAG, tag, mod, startFrame, endFrame, PASSFLOAT(frac), tagName );
}
