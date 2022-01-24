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
struct TYPE_4__ {scalar_t__ fs_type; scalar_t__ result; } ;
typedef  TYPE_1__ uv_fs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_EINVAL ; 
 scalar_t__ UV_EPERM ; 
 scalar_t__ UV_FS_CHOWN ; 
 int /*<<< orphan*/  chown_cb_count ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(uv_fs_t* req) {
  FUNC0(req->fs_type == UV_FS_CHOWN);
#if defined(_WIN32) || defined(__MSYS__)
  /* On windows, chown is a no-op and always succeeds. */
  ASSERT(req->result == 0);
#else
  /* On unix, chown'ing the root directory is not allowed -
   * unless you're root, of course.
   */
  if (FUNC1() == 0)
    FUNC0(req->result == 0);
  else
#   if defined(__CYGWIN__)
    /* On Cygwin, uid 0 is invalid (no root). */
    ASSERT(req->result == UV_EINVAL);
#   else
    FUNC0(req->result == UV_EPERM);
#   endif
#endif
  chown_cb_count++;
  FUNC2(req);
}