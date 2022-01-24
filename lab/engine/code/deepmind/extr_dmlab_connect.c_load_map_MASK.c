#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ error; int /*<<< orphan*/  error_message; scalar_t__ is_video; scalar_t__ is_demo; scalar_t__ is_recording; } ;
struct TYPE_14__ {int is_map_loading; TYPE_5__* recording_ctx; TYPE_2__* dm_ctx; int /*<<< orphan*/  map_start_frame; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* set_error_message ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  userdata; TYPE_1__ hooks; } ;
struct TYPE_11__ {int /*<<< orphan*/  framecount; } ;
typedef  TYPE_3__ GameContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ DMLAB_RECORDING_ERROR_NONE ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_10__ cls ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_5__*) ; 
 int FUNC5 (TYPE_5__*) ; 
 int FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(GameContext* gc) {
  gc->is_map_loading = true;
  FUNC3(gc);
  if (!gc->recording_ctx->is_demo) {
    while (FUNC2(gc) == EAGAIN) {
    }
    // Players join team games in spectator mode. Leave 3 frames for player to
    // join the correct team.
    for (int i = 0; i < 3; ++i) {
      FUNC1();
      FUNC0();
    }
  }
  gc->map_start_frame = cls.framecount;

  bool demo_ok = true;
  if (gc->recording_ctx->is_recording) {
    demo_ok &= FUNC5(gc->recording_ctx);
  }
  if (gc->recording_ctx->is_demo) {
    demo_ok &= FUNC4(gc->recording_ctx);
  }
  if (demo_ok && gc->recording_ctx->is_video) {
    demo_ok &= FUNC6(gc->recording_ctx);
  }
  if (gc->recording_ctx->error != DMLAB_RECORDING_ERROR_NONE) {
    gc->dm_ctx->hooks.set_error_message(gc->dm_ctx->userdata,
                                        gc->recording_ctx->error_message);
  }
  FUNC7(stdout);
  return demo_ok;
}