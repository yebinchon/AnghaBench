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
struct TYPE_5__ {int flags; TYPE_1__* loop; int /*<<< orphan*/ * cb; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ uv_fs_t ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  cloexec_lock; } ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(uv_fs_t* req) {
#ifdef O_CLOEXEC
  return open(req->path, req->flags | O_CLOEXEC, req->mode);
#else  /* O_CLOEXEC */
  int r;

  if (req->cb != NULL)
    FUNC4(&req->loop->cloexec_lock);

  r = FUNC1(req->path, req->flags, req->mode);

  /* In case of failure `uv__cloexec` will leave error in `errno`,
   * so it is enough to just set `r` to `-1`.
   */
  if (r >= 0 && FUNC2(r, 1) != 0) {
    r = FUNC3(r);
    if (r != 0)
      FUNC0();
    r = -1;
  }

  if (req->cb != NULL)
    FUNC5(&req->loop->cloexec_lock);

  return r;
#endif  /* O_CLOEXEC */
}