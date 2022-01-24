#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_5__ {TYPE_2__* handle; } ;
typedef  TYPE_1__ uv_connect_t ;
typedef  int /*<<< orphan*/  pinger_t ;
struct TYPE_6__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alloc_cb ; 
 int /*<<< orphan*/  pinger_on_connect_count ; 
 int /*<<< orphan*/  pinger_read_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(uv_connect_t *req, int status) {
  pinger_t *pinger = (pinger_t*)req->handle->data;

  pinger_on_connect_count++;

  FUNC0(status == 0);

  FUNC0(1 == FUNC3(req->handle));
  FUNC0(1 == FUNC4(req->handle));
  FUNC0(0 == FUNC2((uv_handle_t *) req->handle));

  FUNC1(pinger);

  FUNC5((uv_stream_t*)(req->handle), alloc_cb, pinger_read_cb);
}