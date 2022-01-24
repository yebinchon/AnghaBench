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
typedef  int /*<<< orphan*/  uv_tcp_t ;
struct TYPE_5__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/ * uv_close_cb ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UV_EBUSY ; 
 scalar_t__ free ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uv_stream_t* server, int status) {
  uv_tcp_t* handle;
  int r;

  FUNC0(status == 0);

  handle = FUNC1(sizeof(*handle));
  FUNC0(handle != NULL);

  r = FUNC4(server->loop, handle, AF_INET);
  FUNC0(r == 0);

  r = FUNC2(server, (uv_stream_t*)handle);
  FUNC0(r == UV_EBUSY);

  FUNC3((uv_handle_t*) server, NULL);
  FUNC3((uv_handle_t*) handle, (uv_close_cb)free);
}