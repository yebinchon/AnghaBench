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
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__ virt; } ;
struct blkcipher_walk {int flags; int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  page; TYPE_2__ dst; } ;

/* Variables and functions */
 int BLKCIPHER_WALK_COPY ; 
 int BLKCIPHER_WALK_DIFF ; 
 int BLKCIPHER_WALK_PHYS ; 
 int /*<<< orphan*/  FUNC0 (struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC2 (struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static inline void FUNC5(struct blkcipher_walk *walk,
				       unsigned int n)
{
	if (walk->flags & BLKCIPHER_WALK_COPY) {
		FUNC0(walk);
		FUNC3(walk->dst.virt.addr, walk->page, n);
		FUNC1(walk);
	} else if (!(walk->flags & BLKCIPHER_WALK_PHYS)) {
		if (walk->flags & BLKCIPHER_WALK_DIFF)
			FUNC1(walk);
		FUNC2(walk);
	}

	FUNC4(&walk->in, n);
	FUNC4(&walk->out, n);
}