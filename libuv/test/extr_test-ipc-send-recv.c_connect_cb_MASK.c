#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_connect_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct TYPE_5__ {int /*<<< orphan*/  stream; } ;
struct TYPE_4__ {int /*<<< orphan*/  stream; } ;
struct TYPE_6__ {int /*<<< orphan*/  channel; TYPE_2__ send2; int /*<<< orphan*/  write_req2; TYPE_1__ send; int /*<<< orphan*/  write_req; int /*<<< orphan*/  connect_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alloc_cb ; 
 TYPE_3__ ctx ; 
 int /*<<< orphan*/  recv_cb ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(uv_connect_t* req, int status) {
  int r;
  uv_buf_t buf;

  FUNC0(req == &ctx.connect_req);
  FUNC0(status == 0);

  buf = FUNC1(".", 1);
  r = FUNC3(&ctx.write_req,
                (uv_stream_t*)&ctx.channel,
                &buf, 1,
                &ctx.send.stream,
                NULL);
  FUNC0(r == 0);

  /* Perform two writes to the same pipe to make sure that on Windows we are
   * not running into issue 505:
   *   https://github.com/libuv/libuv/issues/505 */
  buf = FUNC1(".", 1);
  r = FUNC3(&ctx.write_req2,
                (uv_stream_t*)&ctx.channel,
                &buf, 1,
                &ctx.send2.stream,
                NULL);
  FUNC0(r == 0);

  r = FUNC2((uv_stream_t*)&ctx.channel, alloc_cb, recv_cb);
  FUNC0(r == 0);
}