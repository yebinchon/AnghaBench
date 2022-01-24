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
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  channel ; 
 int send_zero_write ; 
 int /*<<< orphan*/  send_zero_write_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_req ; 

int FUNC11(void) {
  int r;
  uv_buf_t zero_buf;

  zero_buf = FUNC2(0, 0);

  r = FUNC7(FUNC3(), &channel, 0);
  FUNC0(r == 0);

  FUNC8(&channel, 0);

  FUNC0(1 == FUNC5((uv_stream_t*) &channel));
  FUNC0(1 == FUNC6((uv_stream_t*) &channel));
  FUNC0(0 == FUNC4((uv_handle_t*) &channel));

  r = FUNC10(&write_req,
               (uv_stream_t*)&channel,
               &zero_buf,
               1,
               send_zero_write_cb);

  FUNC0(r == 0);

  r = FUNC9(FUNC3(), UV_RUN_DEFAULT);
  FUNC0(r == 0);

  FUNC0(send_zero_write == 1);

  FUNC1();
  return 0;
}