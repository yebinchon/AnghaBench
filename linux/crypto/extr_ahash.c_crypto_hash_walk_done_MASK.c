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
struct crypto_hash_walk {unsigned int alignmask; unsigned int data; unsigned int offset; int flags; int /*<<< orphan*/  sg; int /*<<< orphan*/  total; int /*<<< orphan*/  pg; scalar_t__ entrylen; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int CRYPTO_ALG_ASYNC ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct crypto_hash_walk*) ; 
 int FUNC3 (struct crypto_hash_walk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct crypto_hash_walk *walk, int err)
{
	unsigned int alignmask = walk->alignmask;

	walk->data -= walk->offset;

	if (walk->entrylen && (walk->offset & alignmask) && !err) {
		unsigned int nbytes;

		walk->offset = FUNC0(walk->offset, alignmask + 1);
		nbytes = FUNC6(walk->entrylen,
			     (unsigned int)(PAGE_SIZE - walk->offset));
		if (nbytes) {
			walk->entrylen -= nbytes;
			walk->data += walk->offset;
			return nbytes;
		}
	}

	if (walk->flags & CRYPTO_ALG_ASYNC)
		FUNC4(walk->pg);
	else {
		FUNC5(walk->data);
		/*
		 * The may sleep test only makes sense for sync users.
		 * Async users don't need to sleep here anyway.
		 */
		FUNC1(walk->flags);
	}

	if (err)
		return err;

	if (walk->entrylen) {
		walk->offset = 0;
		walk->pg++;
		return FUNC3(walk);
	}

	if (!walk->total)
		return 0;

	walk->sg = FUNC7(walk->sg);

	return FUNC2(walk);
}