#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct TYPE_2__ {scalar_t__ write_queue_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UV_ECONNABORTED ; 
 int UV_ECONNRESET ; 
 int UV_EPIPE ; 
 TYPE_1__ client ; 
 int /*<<< orphan*/  close_cb_called ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(uv_handle_t* handle) {
  uv_buf_t buf;
  int r = 1;

  close_cb_called++;

  buf = FUNC2("meow", 4);
  while (r > 0)
    r = FUNC4((uv_stream_t*) &client, &buf, 1);
  FUNC1(stderr, "uv_try_write error: %d %s\n", r, FUNC3(r));
  FUNC0(r == UV_EPIPE || r == UV_ECONNABORTED || r == UV_ECONNRESET);
  FUNC0(client.write_queue_size == 0);
}