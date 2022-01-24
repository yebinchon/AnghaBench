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
struct TYPE_6__ {int fd; } ;
struct TYPE_7__ {scalar_t__ result; int /*<<< orphan*/  statbuf; int /*<<< orphan*/ * ptr; TYPE_1__ file; } ;
typedef  TYPE_2__ uv_fs_t ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_2__*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(uv_fs_t* req) {
  int fd = req->file.fd;
  HANDLE handle;

  FUNC2(fd, req);

  handle = FUNC4(fd);

  if (handle == INVALID_HANDLE_VALUE) {
    FUNC1(req, ERROR_INVALID_HANDLE);
    return;
  }

  if (FUNC3(handle, &req->statbuf, 0) != 0) {
    FUNC1(req, FUNC0());
    return;
  }

  req->ptr = &req->statbuf;
  req->result = 0;
}