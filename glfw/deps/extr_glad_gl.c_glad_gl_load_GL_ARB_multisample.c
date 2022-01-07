
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSAMPLECOVERAGEPROC ;
typedef scalar_t__ PFNGLSAMPLECOVERAGEARBPROC ;
typedef scalar_t__ (* GLADuserptrloadfunc ) (char*,void*) ;


 int GLAD_GL_ARB_multisample ;
 scalar_t__ glSampleCoverage ;
 scalar_t__ glSampleCoverageARB ;

__attribute__((used)) static void glad_gl_load_GL_ARB_multisample( GLADuserptrloadfunc load, void* userptr) {
    if(!GLAD_GL_ARB_multisample) return;
    glSampleCoverage = (PFNGLSAMPLECOVERAGEPROC) load("glSampleCoverage", userptr);
    glSampleCoverageARB = (PFNGLSAMPLECOVERAGEARBPROC) load("glSampleCoverageARB", userptr);
}
