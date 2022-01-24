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
struct TYPE_4__ {scalar_t__ result; } ;
typedef  TYPE_1__ uv_fs_t ;
struct TYPE_5__ {int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  iov ; 
 int /*<<< orphan*/  on_read ; 
 TYPE_2__ open_req ; 
 int /*<<< orphan*/  read_req ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 

void FUNC4(uv_fs_t *req) {
    if (req->result < 0) {
        FUNC0(stderr, "Write error: %s\n", FUNC3((int)req->result));
    }
    else {
        FUNC2(FUNC1(), &read_req, open_req.result, &iov, 1, -1, on_read);
    }
}