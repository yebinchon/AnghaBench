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
typedef  int /*<<< orphan*/  uv_write_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_4__ {int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ uv_connect_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CHUNKS_PER_WRITE ; 
 scalar_t__ CHUNK_SIZE ; 
 int WRITES ; 
 int /*<<< orphan*/  alloc_cb ; 
 scalar_t__ bytes_sent ; 
 int /*<<< orphan*/  connect_cb_called ; 
 TYPE_1__ connect_req ; 
 int /*<<< orphan*/  read_cb ; 
 scalar_t__ send_buffer ; 
 int /*<<< orphan*/  shutdown_cb ; 
 int /*<<< orphan*/  shutdown_req ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_cb ; 
 int /*<<< orphan*/ * write_reqs ; 

__attribute__((used)) static void FUNC5(uv_connect_t* req, int status) {
  uv_buf_t send_bufs[CHUNKS_PER_WRITE];
  uv_stream_t* stream;
  int i, j, r;

  FUNC0(req == &connect_req);
  FUNC0(status == 0);

  stream = req->handle;
  connect_cb_called++;

  /* Write a lot of data */
  for (i = 0; i < WRITES; i++) {
    uv_write_t* write_req = write_reqs + i;

    for (j = 0; j < CHUNKS_PER_WRITE; j++) {
      send_bufs[j] = FUNC1(send_buffer + bytes_sent, CHUNK_SIZE);
      bytes_sent += CHUNK_SIZE;
    }

    r = FUNC4(write_req, stream, send_bufs, CHUNKS_PER_WRITE, write_cb);
    FUNC0(r == 0);
  }

  /* Shutdown on drain. */
  r = FUNC3(&shutdown_req, stream, shutdown_cb);
  FUNC0(r == 0);

  /* Start reading */
  r = FUNC2(stream, alloc_cb, read_cb);
  FUNC0(r == 0);
}