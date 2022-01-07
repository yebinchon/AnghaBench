
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_17__ {int serverTime; } ;
struct TYPE_16__ {scalar_t__ state; } ;
struct TYPE_15__ {int (* MakeCurrent ) () ;} ;
struct TYPE_10__ {int (* clear ) (int ) ;} ;
struct TYPE_12__ {scalar_t__ (* map_loaded ) (int ) ;int (* has_episode_finished ) (int ,double) ;int (* set_map_finished ) (int ,int) ;scalar_t__ (* map_finished ) (int ) ;TYPE_1__ events; scalar_t__ (* get_native_app ) (int ) ;} ;
struct TYPE_14__ {int userdata; TYPE_3__ hooks; } ;
struct TYPE_13__ {int current_screen_rendered; int step; int engine_frame_period_msec; int total_engine_time_msec; double score; int is_map_loading; TYPE_2__* recording_ctx; TYPE_5__* dm_ctx; } ;
struct TYPE_11__ {scalar_t__ error; } ;
typedef TYPE_4__ GameContext ;
typedef int EnvCApi_EnvironmentStatus ;
typedef TYPE_5__ DeepmindContext ;


 scalar_t__ CA_ACTIVE ;
 int Com_Frame () ;
 scalar_t__ DMLAB_RECORDING_ERROR_NONE ;
 int EnvCApi_EnvironmentStatus_Error ;
 int EnvCApi_EnvironmentStatus_Running ;
 int EnvCApi_EnvironmentStatus_Terminated ;
 int IN_Frame () ;
 int RO_BOTTOM_LEFT ;
 int RO_TOP_LEFT ;
 int SCR_RenderOrigin (int ) ;
 int SCR_SkipRendering (int) ;
 TYPE_9__ cl ;
 TYPE_8__ clc ;
 double get_engine_score () ;
 double kEngineTimePerExternalTime ;
 int load_map (TYPE_4__*) ;
 TYPE_6__ re ;
 int stub1 () ;
 scalar_t__ stub2 (int ) ;
 int stub3 (int ) ;
 scalar_t__ stub4 (int ) ;
 scalar_t__ stub5 (int ) ;
 int stub6 (int ,int) ;
 int stub7 (int ,double) ;

__attribute__((used)) static EnvCApi_EnvironmentStatus dmlab_advance(
    void* context, int num_steps, double* reward) {
  re.MakeCurrent();
  GameContext* gc = context;
  DeepmindContext* ctx = gc->dm_ctx;
  if (ctx->hooks.get_native_app(ctx->userdata)) {
    SCR_SkipRendering(0);
    SCR_RenderOrigin(RO_BOTTOM_LEFT);
  } else {
    SCR_SkipRendering(1);
    SCR_RenderOrigin(RO_TOP_LEFT);
  }
  gc->current_screen_rendered = 0;
  ctx->hooks.events.clear(ctx->userdata);
  *reward = 0;
  bool episode_ended = 0;
  for (int i = 0; i < num_steps && !episode_ended; ++i) {
    double reward_before = get_engine_score();
    if (ctx->hooks.map_finished(ctx->userdata)) {

      double final_reward_score = get_engine_score();

      bool map_loaded = load_map(gc);
      if (gc->recording_ctx->error != DMLAB_RECORDING_ERROR_NONE) {
        return EnvCApi_EnvironmentStatus_Error;
      }
      if (!map_loaded) {
        return EnvCApi_EnvironmentStatus_Terminated;
      }
      if (ctx->hooks.map_loaded(ctx->userdata) != 0) {
        return EnvCApi_EnvironmentStatus_Error;
      }
      ctx->hooks.set_map_finished(ctx->userdata, 0);

      double start_reward = get_engine_score();

      reward_before = start_reward - (final_reward_score - reward_before);
    }

    gc->step += 1;
    int time_before = cl.serverTime;
    IN_Frame();
    Com_Frame();
    int time_after = cl.serverTime;

    if (gc->engine_frame_period_msec == 0) {
      gc->total_engine_time_msec += time_after - time_before;
    } else {
      gc->total_engine_time_msec = gc->step * gc->engine_frame_period_msec;
    }

    episode_ended = ctx->hooks.has_episode_finished(
        ctx->userdata,
        gc->total_engine_time_msec / (kEngineTimePerExternalTime * 1000.0));







    if (episode_ended) {
      Com_Frame();
    }

    if (clc.state == CA_ACTIVE) {
      double reward_after = get_engine_score();
      double delta_score = reward_after - reward_before;
      gc->score += delta_score;
      *reward += delta_score;
    }
    gc->is_map_loading = 0;
  }
  gc->current_screen_rendered = 0;
  return episode_ended ? EnvCApi_EnvironmentStatus_Terminated
                       : EnvCApi_EnvironmentStatus_Running;
}
