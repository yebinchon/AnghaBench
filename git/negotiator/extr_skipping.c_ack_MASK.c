#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fetch_negotiator {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int COMMON ; 
 int SEEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct commit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fetch_negotiator *n, struct commit *c)
{
	int known_to_be_common = !!(c->object.flags & COMMON);
	if (!(c->object.flags & SEEN))
		FUNC0("received ack for commit %s not sent as 'have'\n",
		    FUNC2(&c->object.oid));
	FUNC1(n->data, c);
	return known_to_be_common;
}