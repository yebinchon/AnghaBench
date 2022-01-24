#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ uv_buf_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_EOF ; 
 int /*<<< orphan*/  bytes_received_done ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_stream_t* tcp, ssize_t nread, const uv_buf_t* buf) {
  FUNC0(tcp != NULL);

  if (nread >= 0) {
    bytes_received_done += nread;
  }
  else {
    FUNC0(nread == UV_EOF);
    FUNC2("GOT EOF\n");
    FUNC3((uv_handle_t*)tcp, close_cb);
  }

  FUNC1(buf->base);
}