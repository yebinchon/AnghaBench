#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int is_connecting; int map_loaded; int /*<<< orphan*/  engine_frame_period_msec; int /*<<< orphan*/  server_port; } ;
typedef  TYPE_1__ GameContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(GameContext* gc) {
  FUNC0(FUNC3("connect -6 [::1]:%d\n", gc->server_port));
  FUNC2("fixedtime", FUNC3("%d", gc->engine_frame_period_msec));
  FUNC1();
  gc->is_connecting = true;
  gc->map_loaded = false;
}