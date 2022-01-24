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
struct TYPE_4__ {scalar_t__ handle; } ;
typedef  TYPE_1__ uv_connect_t ;

/* Variables and functions */
 int /*<<< orphan*/  alloc_buffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  on_read ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(uv_connect_t *req, int status) {
    if (status < 0) {
        FUNC0(stderr, "connect failed error %s\n", FUNC2(status));
        FUNC1(req);
        return;
    }

    FUNC3((uv_stream_t*) req->handle, alloc_buffer, on_read);
    FUNC1(req);
}