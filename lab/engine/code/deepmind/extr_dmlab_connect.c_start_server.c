
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ error; int error_message; scalar_t__ is_recording; } ;
struct TYPE_9__ {int is_connecting; int map_loaded; TYPE_5__* recording_ctx; TYPE_2__* dm_ctx; } ;
struct TYPE_7__ {int (* set_error_message ) (int ,int ) ;} ;
struct TYPE_8__ {int userdata; TYPE_1__ hooks; } ;
typedef TYPE_3__ GameContext ;


 scalar_t__ DMLAB_RECORDING_ERROR_NONE ;
 int dev_map (TYPE_3__*) ;
 int dmlab_start_recording (TYPE_5__*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static bool start_server(GameContext* gc) {
  dev_map(gc);
  if (gc->recording_ctx->is_recording) {
    dmlab_start_recording(gc->recording_ctx);
    if (gc->recording_ctx->error != DMLAB_RECORDING_ERROR_NONE) {
      gc->dm_ctx->hooks.set_error_message(gc->dm_ctx->userdata,
                                          gc->recording_ctx->error_message);
      return 0;
    }
  }
  gc->is_connecting = 1;
  gc->map_loaded = 0;
  return 1;
}
