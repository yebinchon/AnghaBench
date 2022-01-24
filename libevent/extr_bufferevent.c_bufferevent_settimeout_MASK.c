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
typedef  int /*<<< orphan*/  tv_write ;
typedef  int /*<<< orphan*/  tv_read ;
struct timeval {int tv_sec; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct bufferevent *bufev,
		       int timeout_read, int timeout_write)
{
	struct timeval tv_read, tv_write;
	struct timeval *ptv_read = NULL, *ptv_write = NULL;

	FUNC1(&tv_read, 0, sizeof(tv_read));
	FUNC1(&tv_write, 0, sizeof(tv_write));

	if (timeout_read) {
		tv_read.tv_sec = timeout_read;
		ptv_read = &tv_read;
	}
	if (timeout_write) {
		tv_write.tv_sec = timeout_write;
		ptv_write = &tv_write;
	}

	FUNC0(bufev, ptv_read, ptv_write);
}