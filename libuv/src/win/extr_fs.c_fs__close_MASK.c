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
struct TYPE_7__ {scalar_t__ result; TYPE_1__ file; } ;
typedef  TYPE_2__ uv_fs_t ;
struct uv__fd_info_s {scalar_t__ mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ EBADF ; 
 int /*<<< orphan*/  ERROR_INVALID_HANDLE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UV_EBADF ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_2__*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC5 (int,struct uv__fd_info_s*) ; 

void FUNC6(uv_fs_t* req) {
  int fd = req->file.fd;
  int result;
  struct uv__fd_info_s fd_info;

  FUNC2(fd, req);

  if (FUNC5(fd, &fd_info)) {
    if (fd_info.mapping != INVALID_HANDLE_VALUE) {
      FUNC0(fd_info.mapping);
    }
  }

  if (fd > 2)
    result = FUNC3(fd);
  else
    result = 0;

  /* _close doesn't set _doserrno on failure, but it does always set errno
   * to EBADF on failure.
   */
  if (result == -1) {
    FUNC4(errno == EBADF);
    FUNC1(req, UV_EBADF, ERROR_INVALID_HANDLE);
  } else {
    req->result = 0;
  }
}