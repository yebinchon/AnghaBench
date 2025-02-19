
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void** origin; void*** axis; int name; } ;
typedef TYPE_1__ md3Tag_t ;
struct TYPE_6__ {int (* get_tag_origin ) (void*,size_t,float*) ;int (* get_tag_axis ) (void*,size_t,size_t,float*) ;int (* get_tag_name ) (void*,size_t,int ,int ) ;} ;
typedef TYPE_2__ DeepmindModelGetters ;


 void* LittleFloat (float) ;
 int MAX_QPATH ;
 int stub1 (void*,size_t,int ,int ) ;
 int stub2 (void*,size_t,size_t,float*) ;
 int stub3 (void*,size_t,float*) ;

__attribute__((used)) static void SerialiseTag(
    size_t tag_idx,
    const DeepmindModelGetters* model,
    void* model_data,
    md3Tag_t* tag) {
  model->get_tag_name(model_data, tag_idx, MAX_QPATH, tag->name);
  for (size_t i = 0; i < 3; ++i) {
    float axis[3];
    model->get_tag_axis(model_data, tag_idx, i, axis);
    for (size_t j = 0; j < 3; ++j) {
      tag->axis[i][j] = LittleFloat(axis[j]);
    }
  }
  float origin[3];
  model->get_tag_origin(model_data, tag_idx, origin);
  for (size_t j = 0; j < 3; ++j) {
    tag->origin[j] = LittleFloat(origin[j]);
  }
}
