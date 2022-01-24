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
 scalar_t__ FUNC0 (struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer_chain*) ; 

__attribute__((used)) static struct evbuffer_chain **
FUNC4(struct evbuffer *buf)
{
	struct evbuffer_chain **ch = buf->last_with_datap;
	/* Find the first victim chain.  It might be *last_with_datap */
	while ((*ch) && ((*ch)->off != 0 || FUNC0(*ch)))
		ch = &(*ch)->next;
	if (*ch) {
		FUNC1(FUNC2(*ch));
		FUNC3(*ch);
		*ch = NULL;
	}
	return ch;
}