#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* data; } ;
typedef  TYPE_1__ uv_work_t ;

/* Variables and functions */
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  after ; 
 int /*<<< orphan*/  async ; 
 int /*<<< orphan*/  fake_download ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  print_progress ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4() {
    loop = FUNC1();

    uv_work_t req;
    int size = 10240;
    req.data = (void*) &size;

    FUNC0(loop, &async, print_progress);
    FUNC2(loop, &req, fake_download, after);

    return FUNC3(loop, UV_RUN_DEFAULT);
}