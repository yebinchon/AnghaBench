#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  base; } ;
struct TYPE_6__ {TYPE_4__ buf; } ;
typedef  TYPE_1__ write_req_t ;
typedef  int /*<<< orphan*/  uv_write_t ;
typedef  int /*<<< orphan*/  uv_write_cb ;
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_7__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ uv_buf_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 TYPE_4__ FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int,int /*<<< orphan*/ ) ; 

void FUNC4(uv_stream_t *dest, size_t size, uv_buf_t buf, uv_write_cb cb) {
    write_req_t *req = (write_req_t*) FUNC0(sizeof(write_req_t));
    req->buf = FUNC2((char*) FUNC0(size), size);
    FUNC1(req->buf.base, buf.base, size);
    FUNC3((uv_write_t*) req, (uv_stream_t*)dest, &req->buf, 1, cb);
}