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
 int FUNC0 (int /*<<< orphan*/ *,struct evbuffer*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct evbuffer *evbuf, ev_uint32_t *ptag)
{
	return (FUNC0(ptag, evbuf, 0 /* dodrain */));
}