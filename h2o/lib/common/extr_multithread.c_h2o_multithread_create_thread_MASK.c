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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void* (*) (void*),void*) ; 

void FUNC3(pthread_t *tid, const pthread_attr_t *attr, void *(*func)(void *), void *arg)
{
    int ret;
    if ((ret = FUNC2(tid, attr, func, arg)) != 0) {
        char buf[128];
        FUNC0("pthread_create: %s", FUNC1(ret, buf, sizeof(buf)));
    }
}