#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* names; } ;
typedef  TYPE_1__ walk_data ;
struct TYPE_5__ {int count; scalar_t__ name; } ;
typedef  TYPE_2__ name_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(walk_data *d)
{
	name_data *n;

	for (n = d->names; n->name; n++) {
		FUNC0(n->count == 1);
	}
}