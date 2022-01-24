#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_tcp_t ;
struct TYPE_6__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_stream_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  alloc_cb ; 
 unsigned int got_connections ; 
 int /*<<< orphan*/  read_cb ; 
 int /*<<< orphan*/ * tcp_incoming ; 
 int /*<<< orphan*/  tcp_server ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(uv_stream_t* server, int status) {
  unsigned int i;
  uv_tcp_t* incoming;

  FUNC1(server == (uv_stream_t*) &tcp_server);

  /* Ignore tcp_check connection */
  if (got_connections == FUNC0(tcp_incoming))
    return;

  /* Accept everyone */
  incoming = &tcp_incoming[got_connections++];
  FUNC1(0 == FUNC4(server->loop, incoming));
  FUNC1(0 == FUNC2(server, (uv_stream_t*) incoming));

  if (got_connections != FUNC0(tcp_incoming))
    return;

  /* Once all clients are accepted - start reading */
  for (i = 0; i < FUNC0(tcp_incoming); i++) {
    incoming = &tcp_incoming[i];
    FUNC1(0 == FUNC3((uv_stream_t*) incoming, alloc_cb, read_cb));
  }
}