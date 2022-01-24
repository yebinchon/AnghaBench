#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int serverTime; } ;
struct TYPE_16__ {scalar_t__ state; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* MakeCurrent ) () ;} ;
struct TYPE_10__ {int /*<<< orphan*/  (* clear ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {scalar_t__ (* map_loaded ) (int /*<<< orphan*/ ) ;int (* has_episode_finished ) (int /*<<< orphan*/ ,double) ;int /*<<< orphan*/  (* set_map_finished ) (int /*<<< orphan*/ ,int) ;scalar_t__ (* map_finished ) (int /*<<< orphan*/ ) ;TYPE_1__ events; scalar_t__ (* get_native_app ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  userdata; TYPE_3__ hooks; } ;
struct TYPE_13__ {int current_screen_rendered; int step; int engine_frame_period_msec; int total_engine_time_msec; double score; int is_map_loading; TYPE_2__* recording_ctx; TYPE_5__* dm_ctx; } ;
struct TYPE_11__ {scalar_t__ error; } ;
typedef  TYPE_4__ GameContext ;
typedef  int /*<<< orphan*/  EnvCApi_EnvironmentStatus ;
typedef  TYPE_5__ DeepmindContext ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ DMLAB_RECORDING_ERROR_NONE ; 
 int /*<<< orphan*/  EnvCApi_EnvironmentStatus_Error ; 
 int /*<<< orphan*/  EnvCApi_EnvironmentStatus_Running ; 
 int /*<<< orphan*/  EnvCApi_EnvironmentStatus_Terminated ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  RO_BOTTOM_LEFT ; 
 int /*<<< orphan*/  RO_TOP_LEFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_9__ cl ; 
 TYPE_8__ clc ; 
 double FUNC4 () ; 
 double kEngineTimePerExternalTime ; 
 int FUNC5 (TYPE_4__*) ; 
 TYPE_6__ re ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,double) ; 

__attribute__((used)) static EnvCApi_EnvironmentStatus FUNC13(
    void* context, int num_steps, double* reward) {
  re.MakeCurrent();
  GameContext* gc = context;
  DeepmindContext* ctx = gc->dm_ctx;
  if (ctx->hooks.get_native_app(ctx->userdata)) {
    FUNC3(false);
    FUNC2(RO_BOTTOM_LEFT);
  } else {
    FUNC3(true);
    FUNC2(RO_TOP_LEFT);
  }
  gc->current_screen_rendered = false;
  ctx->hooks.events.clear(ctx->userdata);
  *reward = 0;
  bool episode_ended = false;
  for (int i = 0; i < num_steps && !episode_ended; ++i) {
    double reward_before = FUNC4();
    if (ctx->hooks.map_finished(ctx->userdata)) {
      // Capture any rewards given during map_finished().
      double final_reward_score = FUNC4();

      bool map_loaded = FUNC5(gc);
      if (gc->recording_ctx->error != DMLAB_RECORDING_ERROR_NONE) {
        return EnvCApi_EnvironmentStatus_Error;
      }
      if (!map_loaded) {
        return EnvCApi_EnvironmentStatus_Terminated;
      }
      if (ctx->hooks.map_loaded(ctx->userdata) != 0) {
        return EnvCApi_EnvironmentStatus_Error;
      }
      ctx->hooks.set_map_finished(ctx->userdata, false);
      // TODO: Update player score to keep from previous map.
      double start_reward = FUNC4();
      // Avoid getting large negative score at the start of a new map.
      reward_before = start_reward - (final_reward_score - reward_before);
    }

    gc->step += 1;
    int time_before = cl.serverTime;
    FUNC1();
    FUNC0();
    int time_after = cl.serverTime;

    if (gc->engine_frame_period_msec == 0) {
      gc->total_engine_time_msec += time_after - time_before;
    } else {
      gc->total_engine_time_msec = gc->step * gc->engine_frame_period_msec;
    }

    episode_ended = ctx->hooks.has_episode_finished(
        ctx->userdata,
        gc->total_engine_time_msec / (kEngineTimePerExternalTime * 1000.0));
    // The last frame of demos wipe the game state, effectively erasing the
    // score. By checking the state for active we only accumulate the score if
    // it has not been wiped. This is a workaround for an issue where server
    // game script methods are not invoked during demos (i.e. set_map_finished
    // is not triggered.)

    // Tick for one extra frame to gather any outstanding rewards.
    if (episode_ended) {
      FUNC0();
    }

    if (clc.state == CA_ACTIVE) {
      double reward_after = FUNC4();
      double delta_score = reward_after - reward_before;
      gc->score += delta_score;
      *reward += delta_score;
    }
    gc->is_map_loading = false;
  }
  gc->current_screen_rendered = false;
  return episode_ended ? EnvCApi_EnvironmentStatus_Terminated
                       : EnvCApi_EnvironmentStatus_Running;
}