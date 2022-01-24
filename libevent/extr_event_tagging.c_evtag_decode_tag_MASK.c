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
 int FUNC0 (int /*<<< orphan*/ *,struct evbuffer*,int) ; 

int
FUNC1(ev_uint32_t *ptag, struct evbuffer *evbuf)
{
	return (FUNC0(ptag, evbuf, 1 /* dodrain */));
}