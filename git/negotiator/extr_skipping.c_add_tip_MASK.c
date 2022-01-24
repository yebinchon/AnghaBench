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
struct fetch_negotiator {int /*<<< orphan*/  data; int /*<<< orphan*/ * known_common; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int SEEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct commit*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct fetch_negotiator *n, struct commit *c)
{
	n->known_common = NULL;
	if (c->object.flags & SEEN)
		return;
	FUNC0(n->data, c, 0);
}