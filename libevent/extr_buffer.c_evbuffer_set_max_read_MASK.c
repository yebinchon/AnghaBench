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
struct evbuffer {size_t max_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 size_t INT_MAX ; 

int FUNC2(struct evbuffer *buf, size_t max)
{
	if (max > INT_MAX) {
		return -1;
	}

	FUNC0(buf);
	buf->max_read = max;
	FUNC1(buf);
	return 0;
}