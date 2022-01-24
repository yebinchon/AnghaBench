#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct credential {scalar_t__ approved; int /*<<< orphan*/  password; int /*<<< orphan*/  username; TYPE_2__ helpers; } ;
struct TYPE_3__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct credential*) ; 
 int /*<<< orphan*/  FUNC2 (struct credential*,int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct credential *c)
{
	int i;

	FUNC1(c);

	for (i = 0; i < c->helpers.nr; i++)
		FUNC2(c, c->helpers.items[i].string, "erase");

	FUNC0(c->username);
	FUNC0(c->password);
	c->approved = 0;
}