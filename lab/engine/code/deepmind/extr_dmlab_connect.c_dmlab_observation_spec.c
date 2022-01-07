
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* custom_observation_spec ) (int ,int,TYPE_3__*) ;} ;
struct TYPE_10__ {int userdata; TYPE_1__ hooks; } ;
struct TYPE_9__ {int dims; int* shape; int type; } ;
struct TYPE_8__ {int* map_frame_number_shape; int* image_shape; int height; int width; TYPE_4__* dm_ctx; } ;
typedef TYPE_2__ GameContext ;
typedef TYPE_3__ EnvCApi_ObservationSpec ;
typedef TYPE_4__ DeepmindContext ;


 int ARRAY_LEN (char**) ;
 int EnvCApi_ObservationBytes ;
 int EnvCApi_ObservationDoubles ;
 int fprintf (int ,char*,char*) ;
 char** kObservationNames ;


 int kObservations_MapFrameNumber ;






 int stderr ;
 int stub1 (int ,int,TYPE_3__*) ;

__attribute__((used)) static void dmlab_observation_spec(
    void* context, int observation_idx, EnvCApi_ObservationSpec* spec) {
  GameContext* gc = context;

  if (observation_idx == kObservations_MapFrameNumber) {
    spec->type = EnvCApi_ObservationDoubles;
    spec->dims = 1;
    spec->shape = gc->map_frame_number_shape;
  } else if (observation_idx < ARRAY_LEN(kObservationNames)) {
    spec->type = EnvCApi_ObservationBytes;
    spec->dims = 3;
    spec->shape = gc->image_shape;

    switch (observation_idx) {
      case 133:
        fprintf(stderr, "Using deprecated observation format: '%s'\n",
                kObservationNames[observation_idx]);

      case 132:
      case 135:
        gc->image_shape[0] = gc->height;
        gc->image_shape[1] = gc->width;
        gc->image_shape[2] = 3;
        break;
      case 130:
        fprintf(stderr, "Using deprecated observation format: '%s'\n",
                kObservationNames[observation_idx]);

      case 129:
      case 134:
        gc->image_shape[0] = gc->height;
        gc->image_shape[1] = gc->width;
        gc->image_shape[2] = 4;
        break;
      case 131:
        gc->image_shape[0] = 3;
        gc->image_shape[1] = gc->height;
        gc->image_shape[2] = gc->width;
        break;
      case 128:
        gc->image_shape[0] = 4;
        gc->image_shape[1] = gc->height;
        gc->image_shape[2] = gc->width;
        break;
    }
  } else {
    DeepmindContext* ctx = gc->dm_ctx;
    ctx->hooks.custom_observation_spec(
        ctx->userdata, observation_idx - ARRAY_LEN(kObservationNames), spec);
  }
}
