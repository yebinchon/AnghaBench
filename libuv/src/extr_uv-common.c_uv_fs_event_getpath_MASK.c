#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ uv_fs_event_t ;

/* Variables and functions */
 int UV_EINVAL ; 
 int UV_ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(uv_fs_event_t* handle, char* buffer, size_t* size) {
  size_t required_len;

  if (!FUNC2(handle)) {
    *size = 0;
    return UV_EINVAL;
  }

  required_len = FUNC1(handle->path);
  if (required_len >= *size) {
    *size = required_len + 1;
    return UV_ENOBUFS;
  }

  FUNC0(buffer, handle->path, required_len);
  *size = required_len;
  buffer[required_len] = '\0';

  return 0;
}