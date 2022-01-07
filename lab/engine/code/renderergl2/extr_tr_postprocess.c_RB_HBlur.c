
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FBO_t ;


 int RB_BlurAxis (int *,int *,float,int ) ;
 int qtrue ;

__attribute__((used)) static void RB_HBlur(FBO_t *srcFbo, FBO_t *dstFbo, float strength)
{
 RB_BlurAxis(srcFbo, dstFbo, strength, qtrue);
}
