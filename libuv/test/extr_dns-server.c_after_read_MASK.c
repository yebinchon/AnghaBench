#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_shutdown_t ;
struct TYPE_4__ {scalar_t__ base; } ;
typedef  TYPE_1__ uv_buf_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_EOF ; 
 int /*<<< orphan*/  after_shutdown ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uv_stream_t* handle,
                       ssize_t nread,
                       const uv_buf_t* buf) {
  uv_shutdown_t* req;

  if (nread < 0) {
    /* Error or EOF */
    FUNC0(nread == UV_EOF);

    if (buf->base) {
      FUNC1(buf->base);
    }

    req = FUNC2(sizeof *req);
    FUNC4(req, handle, after_shutdown);

    return;
  }

  if (nread == 0) {
    /* Everything OK, but nothing read. */
    FUNC1(buf->base);
    return;
  }
  /* process requests and send responses */
  FUNC3(handle, nread, buf);
}