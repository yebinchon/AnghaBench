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
typedef  int /*<<< orphan*/  uv_write_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct TYPE_4__ {int /*<<< orphan*/  tcp; } ;
struct TYPE_5__ {TYPE_1__ stream; int /*<<< orphan*/  vectored_writes; } ;
typedef  TYPE_2__ pinger_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * PING ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  pinger_after_write ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(pinger_t* pinger) {
  uv_write_t *req;
  uv_buf_t bufs[sizeof PING - 1];
  int i, nbufs;

  if (!pinger->vectored_writes) {
    /* Write a single buffer. */
    nbufs = 1;
    bufs[0] = FUNC3(PING, sizeof PING - 1);
  } else {
    /* Write multiple buffers, each with one byte in them. */
    nbufs = sizeof PING - 1;
    for (i = 0; i < nbufs; i++) {
      bufs[i] = FUNC3(&PING[i], 1);
    }
  }

  req = FUNC1(sizeof(*req));
  if (FUNC4(req,
               (uv_stream_t*) &pinger->stream.tcp,
               bufs,
               nbufs,
               pinger_after_write)) {
    FUNC0("uv_write failed");
  }

  FUNC2("PING");
}