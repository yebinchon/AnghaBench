
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * origin; int ** axis; int name; } ;
typedef TYPE_1__ md3Tag_t ;
struct TYPE_6__ {int (* set_tag_origin ) (void*,size_t,float*) ;int (* set_tag_axis ) (void*,size_t,size_t,float*) ;int (* set_tag_name ) (void*,size_t,int ) ;} ;
typedef TYPE_2__ DeepmindModelSetters ;


 float LittleFloat (int ) ;
 int stub1 (void*,size_t,int ) ;
 int stub2 (void*,size_t,size_t,float*) ;
 int stub3 (void*,size_t,float*) ;

__attribute__((used)) static void DeserialiseTag(
    const md3Tag_t* md3_tag,
    size_t tag_idx,
    const DeepmindModelSetters* model_setters,
    void* model_data) {
  model_setters->set_tag_name(model_data, tag_idx, md3_tag->name);
  for (size_t i = 0; i < 3; ++i) {
    float axis[3];
    for (size_t j = 0; j < 3; ++j) {
      axis[j] = LittleFloat(md3_tag->axis[i][j]);
    }
    model_setters->set_tag_axis(model_data, tag_idx, i, axis);
  }
  float origin[3];
  for (size_t j = 0; j < 3; ++j) {
    origin[j] = LittleFloat(md3_tag->origin[j]);
  }
  model_setters->set_tag_origin(model_data, tag_idx, origin);
}
