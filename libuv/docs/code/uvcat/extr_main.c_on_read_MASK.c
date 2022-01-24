#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ result; } ;
typedef  TYPE_1__ uv_fs_t ;
struct TYPE_9__ {int /*<<< orphan*/  result; } ;
struct TYPE_8__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_2__ iov ; 
 int /*<<< orphan*/  on_write ; 
 TYPE_4__ open_req ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  write_req ; 

void FUNC5(uv_fs_t *req) {
    if (req->result < 0) {
        FUNC0(stderr, "Read error: %s\n", FUNC4(req->result));
    }
    else if (req->result == 0) {
        uv_fs_t close_req;
        // synchronous
        FUNC2(FUNC1(), &close_req, open_req.result, NULL);
    }
    else if (req->result > 0) {
        iov.len = req->result;
        FUNC3(FUNC1(), &write_req, 1, &iov, 1, -1, on_write);
    }
}