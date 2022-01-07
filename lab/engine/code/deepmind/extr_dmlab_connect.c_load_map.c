
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_15__ {scalar_t__ error; int error_message; scalar_t__ is_video; scalar_t__ is_demo; scalar_t__ is_recording; } ;
struct TYPE_14__ {int is_map_loading; TYPE_5__* recording_ctx; TYPE_2__* dm_ctx; int map_start_frame; } ;
struct TYPE_12__ {int (* set_error_message ) (int ,int ) ;} ;
struct TYPE_13__ {int userdata; TYPE_1__ hooks; } ;
struct TYPE_11__ {int framecount; } ;
typedef TYPE_3__ GameContext ;


 int Com_Frame () ;
 scalar_t__ DMLAB_RECORDING_ERROR_NONE ;
 scalar_t__ EAGAIN ;
 int IN_Frame () ;
 TYPE_10__ cls ;
 scalar_t__ connecting (TYPE_3__*) ;
 int dev_map (TYPE_3__*) ;
 int dmlab_start_demo (TYPE_5__*) ;
 int dmlab_start_recording (TYPE_5__*) ;
 int dmlab_start_video (TYPE_5__*) ;
 int fflush (int ) ;
 int stdout ;
 int stub1 (int ,int ) ;

__attribute__((used)) static bool load_map(GameContext* gc) {
  gc->is_map_loading = 1;
  dev_map(gc);
  if (!gc->recording_ctx->is_demo) {
    while (connecting(gc) == EAGAIN) {
    }


    for (int i = 0; i < 3; ++i) {
      IN_Frame();
      Com_Frame();
    }
  }
  gc->map_start_frame = cls.framecount;

  bool demo_ok = 1;
  if (gc->recording_ctx->is_recording) {
    demo_ok &= dmlab_start_recording(gc->recording_ctx);
  }
  if (gc->recording_ctx->is_demo) {
    demo_ok &= dmlab_start_demo(gc->recording_ctx);
  }
  if (demo_ok && gc->recording_ctx->is_video) {
    demo_ok &= dmlab_start_video(gc->recording_ctx);
  }
  if (gc->recording_ctx->error != DMLAB_RECORDING_ERROR_NONE) {
    gc->dm_ctx->hooks.set_error_message(gc->dm_ctx->userdata,
                                        gc->recording_ctx->error_message);
  }
  fflush(stdout);
  return demo_ok;
}
