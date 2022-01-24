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
struct TYPE_3__ {scalar_t__ data; } ;
typedef  TYPE_1__ uv_work_t ;

/* Variables and functions */
 long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,long) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4(uv_work_t *req) {
    int n = *(int *) req->data;
    if (FUNC2() % 2)
        FUNC3(1);
    else
        FUNC3(3);
    long fib = FUNC0(n);
    FUNC1(stderr, "%dth fibonacci is %lu\n", n, fib);
}