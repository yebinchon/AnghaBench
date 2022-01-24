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
struct TYPE_5__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_stream_t ;
typedef  int /*<<< orphan*/  uv_pipe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t NUM_CLIENTS ; 
 size_t connect_cb_called ; 
 size_t connection_cb_called ; 
 int /*<<< orphan*/ * connections ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_stream_t* server, int status) {
  int r;
  uv_pipe_t* conn;
  FUNC0(status == 0);

  conn = &connections[connection_cb_called];
  r = FUNC2(server->loop, conn, 0);
  FUNC0(r == 0);

  r = FUNC1(server, (uv_stream_t*)conn);
  FUNC0(r == 0);

  if (++connection_cb_called == NUM_CLIENTS &&
      connect_cb_called == NUM_CLIENTS) {
    FUNC3(server->loop);
  }
}