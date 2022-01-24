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
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_connect_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UV_EAGAIN ; 
 int bytes_written ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  connect_cb_called ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(uv_connect_t* req, int status) {
  int r;
  uv_buf_t buf;
  FUNC0(status == 0);
  connect_cb_called++;

  do {
    buf = FUNC1("PING", 4);
    r = FUNC3((uv_stream_t*) &client, &buf, 1);
    FUNC0(r > 0 || r == UV_EAGAIN);
    if (r > 0) {
      bytes_written += r;
      break;
    }
  } while (1);

  do {
    buf = FUNC1("", 0);
    r = FUNC3((uv_stream_t*) &client, &buf, 1);
  } while (r != 0);
  FUNC2((uv_handle_t*) &client, close_cb);
}