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
struct evbuffer {int dummy; } ;
typedef  int ev_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int FUNC2 (struct evbuffer*,int /*<<< orphan*/ *,void*,size_t) ; 
 scalar_t__ FUNC3 (struct evbuffer*,int) ; 

int
FUNC4(struct evbuffer *buf, void *data_out, size_t datlen)
{
	ev_ssize_t n;
	FUNC0(buf);
	n = FUNC2(buf, NULL, data_out, datlen);
	if (n > 0) {
		if (FUNC3(buf, n)<0)
			n = -1;
	}
	FUNC1(buf);
	return (int)n;
}