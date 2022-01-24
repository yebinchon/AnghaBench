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
typedef  int /*<<< orphan*/  uv_loop_t ;
struct TYPE_5__ {int flags; int retcode; int /*<<< orphan*/  work_req; int /*<<< orphan*/ * loop; scalar_t__ getnameinfo_cb; int /*<<< orphan*/  storage; } ;
typedef  TYPE_1__ uv_getnameinfo_t ;
typedef  scalar_t__ uv_getnameinfo_cb ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int UV_EINVAL ; 
 int /*<<< orphan*/  UV_GETNAMEINFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UV__WORK_SLOW_IO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ )) ; 

int FUNC6(uv_loop_t* loop,
                   uv_getnameinfo_t* req,
                   uv_getnameinfo_cb getnameinfo_cb,
                   const struct sockaddr* addr,
                   int flags) {
  if (req == NULL || addr == NULL)
    return UV_EINVAL;

  if (addr->sa_family == AF_INET) {
    FUNC1(&req->storage,
           addr,
           sizeof(struct sockaddr_in));
  } else if (addr->sa_family == AF_INET6) {
    FUNC1(&req->storage,
           addr,
           sizeof(struct sockaddr_in6));
  } else {
    return UV_EINVAL;
  }

  FUNC0(req, UV_GETNAMEINFO);
  FUNC4(loop, req);

  req->getnameinfo_cb = getnameinfo_cb;
  req->flags = flags;
  req->loop = loop;
  req->retcode = 0;

  if (getnameinfo_cb) {
    FUNC5(loop,
                    &req->work_req,
                    UV__WORK_SLOW_IO,
                    uv__getnameinfo_work,
                    uv__getnameinfo_done);
    return 0;
  } else {
    FUNC3(&req->work_req);
    FUNC2(&req->work_req, 0);
    return req->retcode;
  }
}