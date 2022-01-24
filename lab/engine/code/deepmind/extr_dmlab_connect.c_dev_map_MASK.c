#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* (* next_map ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* add_bots ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  userdata; TYPE_1__ hooks; } ;
struct TYPE_7__ {char const* engine_frame_period_msec; TYPE_3__* dm_ctx; } ;
typedef  TYPE_2__ GameContext ;
typedef  TYPE_3__ DeepmindContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char const*) ; 

__attribute__((used)) static void FUNC9(GameContext* gc) {
  DeepmindContext* ctx = gc->dm_ctx;
  FUNC2("fixedtime", FUNC8("%d", gc->engine_frame_period_msec));
  const char* next_map = ctx->hooks.next_map(ctx->userdata);
  if (next_map[0] == '\0') {
    FUNC0("map_restart 0");
    FUNC0("updatecustomitems");
    FUNC1();
  } else {
    if (!FUNC4(gc, next_map)) {
      FUNC5(FUNC8("Didn't find map '%s'\n", next_map));
      FUNC3(1);
    }
    FUNC0(FUNC8("devmap \"%s\"", next_map));
    FUNC1();
    ctx->hooks.add_bots(ctx->userdata);
  }
}