#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_connect_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  connect_req ; 
 int /*<<< orphan*/  pipe_client ; 
 int /*<<< orphan*/  pipe_client_connect_cb_called ; 
 int /*<<< orphan*/  pipe_close_cb ; 
 int /*<<< orphan*/  pipe_server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uv_connect_t* req, int status) {
  FUNC0(req == &connect_req);
  FUNC0(status == 0);

  pipe_client_connect_cb_called++;

  FUNC1((uv_handle_t*) &pipe_client, pipe_close_cb);
  FUNC1((uv_handle_t*) &pipe_server, pipe_close_cb);
}