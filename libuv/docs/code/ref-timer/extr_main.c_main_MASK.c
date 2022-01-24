#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  fake_job ; 
 int /*<<< orphan*/  fake_job_req ; 
 int /*<<< orphan*/  gc ; 
 int /*<<< orphan*/  gc_req ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5() {
    loop = FUNC0();

    FUNC2(loop, &gc_req);
    FUNC4((uv_handle_t*) &gc_req);

    FUNC3(&gc_req, gc, 0, 2000);

    // could actually be a TCP download or something
    FUNC2(loop, &fake_job_req);
    FUNC3(&fake_job_req, fake_job, 9000, 0);
    return FUNC1(loop, UV_RUN_DEFAULT);
}