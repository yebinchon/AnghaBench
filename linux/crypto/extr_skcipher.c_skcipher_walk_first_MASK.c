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
struct skcipher_walk {unsigned long alignmask; int /*<<< orphan*/ * page; scalar_t__ iv; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int EDEADLK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct skcipher_walk*) ; 
 int FUNC3 (struct skcipher_walk*) ; 
 scalar_t__ FUNC4 (unsigned long) ; 

__attribute__((used)) static int FUNC5(struct skcipher_walk *walk)
{
	if (FUNC0(FUNC1()))
		return -EDEADLK;

	walk->buffer = NULL;
	if (FUNC4(((unsigned long)walk->iv & walk->alignmask))) {
		int err = FUNC2(walk);
		if (err)
			return err;
	}

	walk->page = NULL;

	return FUNC3(walk);
}