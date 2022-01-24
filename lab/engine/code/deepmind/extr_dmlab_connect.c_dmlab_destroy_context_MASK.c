#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  (* MakeCurrent ) () ;} ;
struct TYPE_12__ {scalar_t__ id; } ;
struct TYPE_11__ {scalar_t__ id; } ;
struct TYPE_10__ {scalar_t__ id; } ;
struct TYPE_13__ {TYPE_3__ custom_view; TYPE_2__ depth; TYPE_1__ rgb; } ;
struct TYPE_14__ {scalar_t__ error; char* error_message; struct TYPE_14__* image_buffer; struct TYPE_14__* temp_buffer; struct TYPE_14__* recording_ctx; TYPE_4__ pbos; scalar_t__ is_video; scalar_t__ is_recording; int /*<<< orphan*/ * dm_ctx; } ;
typedef  TYPE_5__ GameContext ;
typedef  int /*<<< orphan*/  DeepmindContext ;

/* Variables and functions */
 scalar_t__ DMLAB_RECORDING_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__*) ; 
 TYPE_6__ re ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(void* context) {
  GameContext* gc = context;
  DeepmindContext* ctx = gc->dm_ctx;

  if (gc->recording_ctx->is_recording) {
    FUNC3(gc->recording_ctx);
  }
  if (gc->recording_ctx->is_video) {
    FUNC4(gc->recording_ctx);
  }
  if (gc->recording_ctx->error != DMLAB_RECORDING_ERROR_NONE) {
    FUNC5(stderr, "ERROR: %s", gc->recording_ctx->error_message);
  }

  if (gc->pbos.rgb.id || gc->pbos.depth.id || gc->pbos.custom_view.id) {
    re.MakeCurrent();
    if (gc->pbos.rgb.id) {
      FUNC7(1, &gc->pbos.rgb.id);
    }

    if (gc->pbos.depth.id) {
      FUNC7(1, &gc->pbos.depth.id);
    }

    if (gc->pbos.custom_view.id) {
      FUNC7(1, &gc->pbos.custom_view.id);
    }
  }

  FUNC2(ctx);
  FUNC6(gc->recording_ctx);
  FUNC6(gc->temp_buffer);
  FUNC6(gc->image_buffer);
  FUNC6(gc);
  FUNC1();
  FUNC0();
}