#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pathw; } ;
struct TYPE_5__ {int result; scalar_t__ sys_errno_; TYPE_1__ file; } ;
typedef  TYPE_2__ uv_fs_t ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_NAME ; 
 int UV_EINVAL ; 
 scalar_t__ _doserrno ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 

void FUNC2(uv_fs_t* req) {
  /* TODO: use req->mode. */
  req->result = FUNC0(req->file.pathw);
  if (req->result == -1) {
    req->sys_errno_ = _doserrno;
    req->result = req->sys_errno_ == ERROR_INVALID_NAME
                ? UV_EINVAL
                : FUNC1(req->sys_errno_);
  }
}