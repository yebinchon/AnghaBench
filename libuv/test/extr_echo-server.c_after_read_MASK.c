#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  req; } ;
typedef  TYPE_1__ write_req_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_shutdown_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_5__ {char* base; } ;
typedef  TYPE_2__ uv_buf_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int UV_EOF ; 
 int /*<<< orphan*/  after_shutdown ; 
 int /*<<< orphan*/  after_write ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  on_close ; 
 int /*<<< orphan*/  on_server_close ; 
 int /*<<< orphan*/ * server ; 
 int server_closed ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(uv_stream_t* handle,
                       ssize_t nread,
                       const uv_buf_t* buf) {
  int i;
  write_req_t *wr;
  uv_shutdown_t* sreq;

  if (nread < 0) {
    /* Error or EOF */
    FUNC0(nread == UV_EOF);

    FUNC2(buf->base);
    sreq = FUNC3(sizeof* sreq);
    FUNC0(0 == FUNC6(sreq, handle, after_shutdown));
    return;
  }

  if (nread == 0) {
    /* Everything OK, but nothing read. */
    FUNC2(buf->base);
    return;
  }

  /*
   * Scan for the letter Q which signals that we should quit the server.
   * If we get QS it means close the stream.
   */
  if (!server_closed) {
    for (i = 0; i < nread; i++) {
      if (buf->base[i] == 'Q') {
        if (i + 1 < nread && buf->base[i + 1] == 'S') {
          FUNC2(buf->base);
          FUNC5((uv_handle_t*)handle, on_close);
          return;
        } else {
          FUNC5(server, on_server_close);
          server_closed = 1;
        }
      }
    }
  }

  wr = (write_req_t*) FUNC3(sizeof *wr);
  FUNC0(wr != NULL);
  wr->buf = FUNC4(buf->base, nread);

  if (FUNC7(&wr->req, handle, &wr->buf, 1, after_write)) {
    FUNC1("uv_write failed");
  }
}