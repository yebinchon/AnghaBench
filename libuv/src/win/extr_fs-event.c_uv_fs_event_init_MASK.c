#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {TYPE_3__ req; int /*<<< orphan*/ * dirw; int /*<<< orphan*/ * short_filew; int /*<<< orphan*/ * filew; scalar_t__ req_pending; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  dir_handle; } ;
typedef  TYPE_1__ uv_fs_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  UV_FS_EVENT ; 
 int /*<<< orphan*/  UV_FS_EVENT_REQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(uv_loop_t* loop, uv_fs_event_t* handle) {
  FUNC1(loop, (uv_handle_t*) handle, UV_FS_EVENT);
  handle->dir_handle = INVALID_HANDLE_VALUE;
  handle->buffer = NULL;
  handle->req_pending = 0;
  handle->filew = NULL;
  handle->short_filew = NULL;
  handle->dirw = NULL;

  FUNC0(&handle->req, UV_FS_EVENT_REQ);
  handle->req.data = handle;

  return 0;
}