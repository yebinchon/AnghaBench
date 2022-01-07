
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int md3XyzNormal_t ;
typedef int md3Triangle_t ;
typedef int md3Surface_t ;
typedef int md3St_t ;
typedef int md3Shader_t ;
struct TYPE_3__ {int (* get_surface_shader_count ) (void*,size_t) ;int (* get_surface_face_count ) (void*,size_t) ;int (* get_surface_vertex_count ) (void*,size_t) ;} ;
typedef TYPE_1__ DeepmindModelGetters ;


 int stub1 (void*,size_t) ;
 int stub2 (void*,size_t) ;
 int stub3 (void*,size_t) ;

__attribute__((used)) static size_t SurfaceSize(
    size_t surf_idx,
    const DeepmindModelGetters* model,
    void* model_data) {
  size_t res;
  res = sizeof(md3Surface_t);
  res += model->get_surface_shader_count(model_data, surf_idx) *
      sizeof(md3Shader_t);
  res += model->get_surface_face_count(model_data, surf_idx) *
      sizeof(md3Triangle_t);
  res += model->get_surface_vertex_count(model_data, surf_idx) *
      (sizeof(md3St_t) + sizeof(md3XyzNormal_t));
  return res;
}
