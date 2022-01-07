
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QGL_1_1_FIXED_FUNCTION_PROCS ;
 int QGL_1_1_PROCS ;
 int QGL_1_3_PROCS ;
 int QGL_1_5_PROCS ;
 int QGL_2_0_PROCS ;
 int QGL_3_0_PROCS ;
 int QGL_ARB_framebuffer_object_PROCS ;
 int QGL_ARB_occlusion_query_PROCS ;
 int QGL_ARB_vertex_array_object_PROCS ;
 int QGL_DESKTOP_1_1_FIXED_FUNCTION_PROCS ;
 int QGL_DESKTOP_1_1_PROCS ;
 int QGL_ES_1_1_FIXED_FUNCTION_PROCS ;
 int QGL_ES_1_1_PROCS ;
 int QGL_EXT_direct_state_access_PROCS ;
 int * qglActiveTextureARB ;
 int * qglClientActiveTextureARB ;
 int * qglLockArraysEXT ;
 scalar_t__ qglMajorVersion ;
 scalar_t__ qglMinorVersion ;
 int * qglMultiTexCoord2fARB ;
 int * qglUnlockArraysEXT ;
 scalar_t__ qglesMajorVersion ;
 scalar_t__ qglesMinorVersion ;

__attribute__((used)) static void GLimp_ClearProcAddresses( void ) {


 qglMajorVersion = 0;
 qglMinorVersion = 0;
 qglesMajorVersion = 0;
 qglesMinorVersion = 0;

 QGL_1_1_PROCS;
 QGL_1_1_FIXED_FUNCTION_PROCS;
 QGL_DESKTOP_1_1_PROCS;
 QGL_DESKTOP_1_1_FIXED_FUNCTION_PROCS;
 QGL_ES_1_1_PROCS;
 QGL_ES_1_1_FIXED_FUNCTION_PROCS;
 QGL_1_3_PROCS;
 QGL_1_5_PROCS;
 QGL_2_0_PROCS;
 QGL_3_0_PROCS;
 QGL_ARB_occlusion_query_PROCS;
 QGL_ARB_framebuffer_object_PROCS;
 QGL_ARB_vertex_array_object_PROCS;
 QGL_EXT_direct_state_access_PROCS;

 qglActiveTextureARB = ((void*)0);
 qglClientActiveTextureARB = ((void*)0);
 qglMultiTexCoord2fARB = ((void*)0);

 qglLockArraysEXT = ((void*)0);
 qglUnlockArraysEXT = ((void*)0);


}
