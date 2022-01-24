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
struct evbuffer_chain {scalar_t__ off; struct evbuffer_chain* next; } ;
struct evbuffer {struct evbuffer_chain** last_with_datap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 

__attribute__((used)) static int
FUNC1(struct evbuffer *buf)
{
	int n = 0;
	struct evbuffer_chain **chainp = buf->last_with_datap;

	FUNC0(buf);

	if (!*chainp)
		return 0;

	while ((*chainp)->next) {
		chainp = &(*chainp)->next;
		if ((*chainp)->off)
			buf->last_with_datap = chainp;
		++n;
	}
	return n;
}