#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_fs_event_cb ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * fs_event ; 
 scalar_t__* fs_event_cbs ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  watched_dir ; 

__attribute__((used)) static void FUNC4(uv_loop_t* loop) {
  size_t i;
  for (i = 0; i < FUNC0(fs_event); i++) {
    int r;
    r = FUNC2(loop, &fs_event[i]);
    FUNC1(r == 0);

    r = FUNC3(&fs_event[i],
                          (uv_fs_event_cb)fs_event_cbs[i],
                          watched_dir,
                          0);
    FUNC1(r == 0);
  }
}