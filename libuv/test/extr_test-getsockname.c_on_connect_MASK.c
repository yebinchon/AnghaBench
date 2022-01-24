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
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_3__ {scalar_t__ handle; } ;
typedef  TYPE_1__ uv_connect_t ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  getpeernamecount ; 
 int /*<<< orphan*/  getsocknamecount ; 
 int /*<<< orphan*/  server_port ; 
 int /*<<< orphan*/  tcp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct sockaddr*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sockaddr*,int*) ; 

__attribute__((used)) static void FUNC5(uv_connect_t* req, int status) {
  struct sockaddr sockname, peername;
  int r, namelen;

  FUNC0(status == 0);

  namelen = sizeof sockname;
  r = FUNC4((uv_tcp_t*) req->handle, &sockname, &namelen);
  FUNC0(r == 0);
  FUNC1(&sockname, "127.0.0.1", 0, "connected socket");
  getsocknamecount++;

  namelen = sizeof peername;
  r = FUNC3((uv_tcp_t*) req->handle, &peername, &namelen);
  FUNC0(r == 0);
  FUNC1(&peername, "127.0.0.1", server_port, "connected socket peer");
  getpeernamecount++;

  FUNC2((uv_handle_t*)&tcp, NULL);
}