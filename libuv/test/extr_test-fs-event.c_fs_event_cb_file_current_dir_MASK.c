#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* data; } ;
typedef  TYPE_1__ uv_timer_t ;
struct TYPE_8__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_2__ uv_fs_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UV_CHANGE ; 
 TYPE_2__ fs_event ; 
 scalar_t__ fs_event_cb_called ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  timer_cb_close_handle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_fs_event_t* handle,
  const char* filename, int events, int status) {
  FUNC0(fs_event_cb_called == 0);
  ++fs_event_cb_called;

  FUNC0(handle == &fs_event);
  FUNC0(status == 0);
  FUNC0(events == UV_CHANGE);
  #if defined(__APPLE__) || defined(_WIN32) || defined(__linux__)
  FUNC0(FUNC1(filename, "watch_file") == 0);
  #else
  ASSERT(filename == NULL || strcmp(filename, "watch_file") == 0);
  #endif

  /* Regression test for SunOS: touch should generate just one event. */
  {
    static uv_timer_t timer;
    FUNC2(handle->loop, &timer);
    timer.data = handle;
    FUNC3(&timer, timer_cb_close_handle, 250, 0);
  }
}