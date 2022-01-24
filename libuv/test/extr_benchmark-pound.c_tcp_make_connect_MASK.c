#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_tcp_t ;
struct TYPE_10__ {int /*<<< orphan*/  conn_req; } ;
typedef  TYPE_4__ tcp_conn_rec ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_9__ {TYPE_5__* data; } ;
struct TYPE_8__ {TYPE_5__* data; } ;
struct TYPE_7__ {TYPE_5__* data; } ;
struct TYPE_11__ {int i; TYPE_3__ stream; TYPE_2__ write_req; TYPE_1__ conn_req; } ;
typedef  TYPE_5__ conn_rec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  connect_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(conn_rec* p) {
  struct sockaddr_in addr;
  tcp_conn_rec* tp;
  int r;

  tp = (tcp_conn_rec*) p;

  r = FUNC6(loop, (uv_tcp_t*)&p->stream);
  FUNC0(r == 0);

  FUNC0(0 == FUNC4("127.0.0.1", TEST_PORT, &addr));

  r = FUNC5(&tp->conn_req,
                     (uv_tcp_t*) &p->stream,
                     (const struct sockaddr*) &addr,
                     connect_cb);
  if (r) {
    FUNC1(stderr, "uv_tcp_connect error %s\n", FUNC3(r));
    FUNC0(0);
  }

#if DEBUG
  printf("make connect %d\n", p->i);
#endif

  p->conn_req.data = p;
  p->write_req.data = p;
  p->stream.data = p;
}