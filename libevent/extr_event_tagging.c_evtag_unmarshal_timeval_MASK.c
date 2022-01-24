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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct evbuffer {int dummy; } ;
typedef  scalar_t__ ev_uint32_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__*,struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int) ; 
 int FUNC2 (struct evbuffer*,scalar_t__*) ; 

int
FUNC3(struct evbuffer *evbuf, ev_uint32_t need_tag,
    struct timeval *ptv)
{
	ev_uint32_t tag;
	ev_uint32_t integer;
	int len, offset, offset2;
	int result = -1;

	if ((len = FUNC2(evbuf, &tag)) == -1)
		return (-1);
	if (tag != need_tag)
		goto done;
	if ((offset = FUNC0(&integer, evbuf, 0)) == -1)
		goto done;
	ptv->tv_sec = integer;
	if ((offset2 = FUNC0(&integer, evbuf, offset)) == -1)
		goto done;
	ptv->tv_usec = integer;
	if (offset + offset2 > len) /* XXX Should this be != instead of > ? */
		goto done;

	result = 0;
 done:
	FUNC1(evbuf, len);
	return result;
}