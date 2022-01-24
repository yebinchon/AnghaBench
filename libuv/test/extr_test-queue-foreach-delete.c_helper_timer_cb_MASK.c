#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_timer_t ;
struct TYPE_7__ {scalar_t__ result; scalar_t__ fs_type; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ uv_fs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_FS_UTIME ; 
 int /*<<< orphan*/  helper_timer_cb_calls ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  watched_dir ; 

__attribute__((used)) static void FUNC4(uv_timer_t* thandle) {
  int r;
  uv_fs_t fs_req;

  /* fire all fs_events */
  r = FUNC3(thandle->loop, &fs_req, watched_dir, 0, 0, NULL);
  FUNC0(r == 0);
  FUNC0(fs_req.result == 0);
  FUNC0(fs_req.fs_type == UV_FS_UTIME);
  FUNC0(FUNC1(fs_req.path, watched_dir) == 0);
  FUNC2(&fs_req);

  helper_timer_cb_calls++;
}