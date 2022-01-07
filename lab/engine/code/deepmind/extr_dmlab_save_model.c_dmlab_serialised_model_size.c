
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int md3Tag_t ;
typedef int md3Header_t ;
typedef int md3Frame_t ;
struct TYPE_4__ {int (* get_tag_count ) (void*) ;size_t (* get_surface_count ) (void*) ;} ;
typedef TYPE_1__ DeepmindModelGetters ;


 scalar_t__ SurfaceSize (size_t,TYPE_1__ const*,void*) ;
 int stub1 (void*) ;
 size_t stub2 (void*) ;

size_t dmlab_serialised_model_size(
    const DeepmindModelGetters* model,
    void* model_data) {
  size_t res = sizeof(md3Header_t);
  res += sizeof(md3Frame_t);
  res += model->get_tag_count(model_data) * sizeof(md3Tag_t);
  size_t num_surfs = model->get_surface_count(model_data);
  for (size_t i = 0; i < num_surfs; ++i) {
    res += SurfaceSize(i, model, model_data);
  }
  return res;
}
