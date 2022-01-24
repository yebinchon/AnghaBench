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
typedef  int /*<<< orphan*/  uv_udp_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  sockname ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  getsocknamecount ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,int,int) ; 
 int /*<<< orphan*/  udp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct sockaddr*,int*) ; 

__attribute__((used)) static void FUNC6(uv_udp_t* handle,
                     ssize_t nread,
                     const uv_buf_t* buf,
                     const struct sockaddr* addr,
                     unsigned flags) {
  struct sockaddr sockname;
  int namelen;
  int r;

  FUNC0(nread >= 0);
  FUNC2(buf->base);

  if (nread == 0) {
    return;
  }

  FUNC3(&sockname, -1, sizeof sockname);
  namelen = sizeof(sockname);
  r = FUNC5(&udp, &sockname, &namelen);
  FUNC0(r == 0);
  FUNC1(&sockname, "0.0.0.0", 0, "udp receiving socket");
  getsocknamecount++;

  FUNC4((uv_handle_t*) &udp, NULL);
  FUNC4((uv_handle_t*) handle, NULL);
}