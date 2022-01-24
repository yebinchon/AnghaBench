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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_EOF ; 
 int /*<<< orphan*/  output_used ; 
 int /*<<< orphan*/  pipe_close_cb ; 
 int pipe_open ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uv_stream_t* pipe, ssize_t nread, const uv_buf_t* buf) {
  if (nread > 0) {
    FUNC0(pipe_open == 1);
    output_used += nread;
  } else if (nread < 0) {
    if (nread == UV_EOF) {
      FUNC1((uv_handle_t*)pipe, pipe_close_cb);
    }
  }
}