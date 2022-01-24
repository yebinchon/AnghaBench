#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_stream_t ;
struct TYPE_9__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_2__ conn_rec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alloc_cb ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  read_cb ; 
 int /*<<< orphan*/  tcp_server ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(uv_stream_t* stream, int status) {
  conn_rec* conn;
  int r;

  FUNC0(status == 0);
  FUNC0(stream == (uv_stream_t*)&tcp_server);

  conn = FUNC1(sizeof *conn);
  FUNC0(conn != NULL);

  r = FUNC4(stream->loop, &conn->handle);
  FUNC0(r == 0);

  r = FUNC2(stream, (uv_stream_t*)&conn->handle);
  FUNC0(r == 0);

  r = FUNC3((uv_stream_t*)&conn->handle, alloc_cb, read_cb);
  FUNC0(r == 0);
}