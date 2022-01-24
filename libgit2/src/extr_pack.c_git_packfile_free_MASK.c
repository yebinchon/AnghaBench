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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct git_pack_file {TYPE_1__ bases; int /*<<< orphan*/  lock; struct git_pack_file* bad_object_sha1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct git_pack_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct git_pack_file*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct git_pack_file*) ; 

void FUNC5(struct git_pack_file *p)
{
	if (!p)
		return;

	FUNC0(&p->bases);

	FUNC3(p, false);

	FUNC4(p);

	FUNC1(p->bad_object_sha1);

	FUNC2(&p->lock);
	FUNC2(&p->bases.lock);
	FUNC1(p);
}