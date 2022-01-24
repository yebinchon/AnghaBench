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
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ client_close ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int read_size ; 
 int /*<<< orphan*/  tcp_accepted ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(uv_stream_t* stream, ssize_t nread, const uv_buf_t* buf) {
  FUNC0((uv_tcp_t*)stream == &tcp_accepted);
  if (nread < 0) {
    FUNC2((uv_handle_t*) stream, NULL);
  } else {
    read_size += nread;
    if (read_size == 16 && client_close == 0)
      FUNC1(&tcp_accepted);
  }
}