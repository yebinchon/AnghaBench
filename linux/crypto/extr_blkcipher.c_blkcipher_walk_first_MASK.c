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
struct TYPE_2__ {int /*<<< orphan*/  sg; } ;
struct blkcipher_walk {unsigned long alignmask; int /*<<< orphan*/ * page; TYPE_1__ out; TYPE_1__ in; scalar_t__ iv; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  total; int /*<<< orphan*/  nbytes; } ;
struct blkcipher_desc {scalar_t__ info; } ;

/* Variables and functions */
 int EDEADLK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct blkcipher_walk*) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long) ; 

__attribute__((used)) static int FUNC6(struct blkcipher_desc *desc,
				struct blkcipher_walk *walk)
{
	if (FUNC0(FUNC3()))
		return -EDEADLK;

	walk->iv = desc->info;
	walk->nbytes = walk->total;
	if (FUNC5(!walk->total))
		return 0;

	walk->buffer = NULL;
	if (FUNC5(((unsigned long)walk->iv & walk->alignmask))) {
		int err = FUNC1(walk);
		if (err)
			return err;
	}

	FUNC4(&walk->in, walk->in.sg);
	FUNC4(&walk->out, walk->out.sg);
	walk->page = NULL;

	return FUNC2(desc, walk);
}