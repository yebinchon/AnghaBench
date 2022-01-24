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
typedef  int /*<<< orphan*/  ev_uint32_t ;

/* Variables and functions */
 int FUNC0 (struct evbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,int) ; 
 int FUNC3 (struct evbuffer*,int /*<<< orphan*/ *) ; 

int
FUNC4(struct evbuffer *src, ev_uint32_t *ptag, struct evbuffer *dst)
{
	int len;

	if ((len = FUNC3(src, ptag)) == -1)
		return (-1);

	if (FUNC0(dst, FUNC2(src, len), len) == -1)
		return (-1);

	FUNC1(src, len);

	return (len);
}