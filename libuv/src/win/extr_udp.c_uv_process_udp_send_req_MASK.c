#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ type; scalar_t__ send_queue_size; int send_queue_count; } ;
typedef  TYPE_3__ uv_udp_t ;
struct TYPE_13__ {scalar_t__ queued_bytes; } ;
struct TYPE_14__ {TYPE_1__ io; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* cb ) (TYPE_4__*,int /*<<< orphan*/ ) ;TYPE_2__ u; } ;
typedef  TYPE_4__ uv_udp_send_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ UV_UDP ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(uv_loop_t* loop, uv_udp_t* handle,
    uv_udp_send_t* req) {
  int err;

  FUNC4(handle->type == UV_UDP);

  FUNC4(handle->send_queue_size >= req->u.io.queued_bytes);
  FUNC4(handle->send_queue_count >= 1);
  handle->send_queue_size -= req->u.io.queued_bytes;
  handle->send_queue_count--;

  FUNC3(loop, handle, req);

  if (req->cb) {
    err = 0;
    if (!FUNC2(req)) {
      err = FUNC1(req);
    }
    req->cb(req, FUNC6(err));
  }

  FUNC0(handle);
}