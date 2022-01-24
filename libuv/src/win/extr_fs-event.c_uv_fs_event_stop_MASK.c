#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dir_handle; int /*<<< orphan*/ * dirw; int /*<<< orphan*/ * path; int /*<<< orphan*/ * short_filew; int /*<<< orphan*/ * filew; } ;
typedef  TYPE_1__ uv_fs_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(uv_fs_event_t* handle) {
  if (!FUNC3(handle))
    return 0;

  if (handle->dir_handle != INVALID_HANDLE_VALUE) {
    FUNC0(handle->dir_handle);
    handle->dir_handle = INVALID_HANDLE_VALUE;
  }

  FUNC2(handle);

  if (handle->filew) {
    FUNC1(handle->filew);
    handle->filew = NULL;
  }

  if (handle->short_filew) {
    FUNC1(handle->short_filew);
    handle->short_filew = NULL;
  }

  if (handle->path) {
    FUNC1(handle->path);
    handle->path = NULL;
  }

  if (handle->dirw) {
    FUNC1(handle->dirw);
    handle->dirw = NULL;
  }

  return 0;
}