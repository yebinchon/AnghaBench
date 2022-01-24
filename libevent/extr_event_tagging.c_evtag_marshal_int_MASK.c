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
typedef  int /*<<< orphan*/  ev_uint8_t ;
typedef  int /*<<< orphan*/  ev_uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct evbuffer *evbuf, ev_uint32_t tag, ev_uint32_t integer)
{
	ev_uint8_t data[5];
	int len = FUNC0(data, integer);

	FUNC3(evbuf, tag);
	FUNC2(evbuf, len);
	FUNC1(evbuf, data, len);
}