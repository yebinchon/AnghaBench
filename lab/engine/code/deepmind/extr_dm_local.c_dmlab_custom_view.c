
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refdef_t ;
typedef int qboolean ;


 int DEEPMIND_CUSTOM_VIEW ;
 int trap_DeepmindCallback (int ,intptr_t,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

qboolean dmlab_custom_view(refdef_t* camera) {
  return trap_DeepmindCallback(DEEPMIND_CUSTOM_VIEW, (intptr_t)camera, 0, 0, 0,
                               0, 0, 0, 0, 0, 0, 0, 0);
}
