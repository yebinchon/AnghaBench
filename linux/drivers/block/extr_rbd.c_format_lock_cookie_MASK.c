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
struct rbd_device {int /*<<< orphan*/  watch_mutex; int /*<<< orphan*/  watch_cookie; } ;

/* Variables and functions */
 char* RBD_LOCK_COOKIE_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rbd_device *rbd_dev, char *buf)
{
	FUNC0(&rbd_dev->watch_mutex);
	FUNC2(buf, "%s %llu", RBD_LOCK_COOKIE_PREFIX, rbd_dev->watch_cookie);
	FUNC1(&rbd_dev->watch_mutex);
}