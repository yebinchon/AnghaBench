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
struct pack_entry {TYPE_1__* p; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int freshened; int /*<<< orphan*/  pack_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct object_id const*,struct pack_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC2(const struct object_id *oid)
{
	struct pack_entry e;
	if (!FUNC0(the_repository, oid, &e))
		return 0;
	if (e.p->freshened)
		return 1;
	if (!FUNC1(e.p->pack_name))
		return 0;
	e.p->freshened = 1;
	return 1;
}