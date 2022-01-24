#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_stream_t ;
struct TYPE_10__ {char* base; int len; } ;
typedef  TYPE_2__ uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alloc_cb ; 
 int /*<<< orphan*/  read_cb ; 
 int /*<<< orphan*/  tcp_peer ; 
 int /*<<< orphan*/  tcp_server ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_cb ; 
 int /*<<< orphan*/  write_req ; 

__attribute__((used)) static void FUNC5(uv_stream_t* server, int status) {
  int r;
  uv_buf_t buf;

  FUNC0(server == (uv_stream_t*)&tcp_server);
  FUNC0(status == 0);

  r = FUNC3(server->loop, &tcp_peer);
  FUNC0(r == 0);

  r = FUNC1(server, (uv_stream_t*)&tcp_peer);
  FUNC0(r == 0);

  r = FUNC2((uv_stream_t*)&tcp_peer, alloc_cb, read_cb);
  FUNC0(r == 0);

  buf.base = "hello\n";
  buf.len = 6;

  r = FUNC4(&write_req, (uv_stream_t*)&tcp_peer, &buf, 1, write_cb);
  FUNC0(r == 0);
}