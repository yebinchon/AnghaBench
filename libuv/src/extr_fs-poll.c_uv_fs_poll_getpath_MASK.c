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
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_3__ {struct poll_ctx* poll_ctx; } ;
typedef  TYPE_1__ uv_fs_poll_t ;
struct poll_ctx {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int UV_EINVAL ; 
 int UV_ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(uv_fs_poll_t* handle, char* buffer, size_t* size) {
  struct poll_ctx* ctx;
  size_t required_len;

  if (!FUNC3((uv_handle_t*)handle)) {
    *size = 0;
    return UV_EINVAL;
  }

  ctx = handle->poll_ctx;
  FUNC0(ctx != NULL);

  required_len = FUNC2(ctx->path);
  if (required_len >= *size) {
    *size = required_len + 1;
    return UV_ENOBUFS;
  }

  FUNC1(buffer, ctx->path, required_len);
  *size = required_len;
  buffer[required_len] = '\0';

  return 0;
}