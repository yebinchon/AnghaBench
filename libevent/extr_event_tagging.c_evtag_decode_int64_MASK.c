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
typedef  int /*<<< orphan*/  ev_uint64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct evbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int) ; 

int
FUNC2(ev_uint64_t *pnumber, struct evbuffer *evbuf)
{
	int res = FUNC0(pnumber, evbuf, 0);
	if (res != -1)
		FUNC1(evbuf, res);

	return (res == -1 ? -1 : 0);
}