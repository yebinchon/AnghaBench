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
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_fs_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UV_CHANGE ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  fs_event ; 
 int /*<<< orphan*/  fs_event_cb_called ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(uv_fs_event_t* handle, const char* filename,
  int events, int status) {
  ++fs_event_cb_called;
  FUNC0(handle == &fs_event);
  FUNC0(status == 0);
  FUNC0(events == UV_CHANGE);
  #if defined(__APPLE__) || defined(_WIN32) || defined(__linux__)
  FUNC0(FUNC1(filename, "file2") == 0);
  #else
  ASSERT(filename == NULL || strcmp(filename, "file2") == 0);
  #endif
  FUNC0(0 == FUNC3(handle));
  FUNC2((uv_handle_t*)handle, close_cb);
}