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
struct blkcipher_walk {int nbytes; scalar_t__ total; int flags; scalar_t__ iv; scalar_t__ buffer; scalar_t__ page; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct blkcipher_desc {scalar_t__ info; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BLKCIPHER_WALK_SLOW ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct blkcipher_walk*,unsigned int) ; 
 int FUNC3 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct blkcipher_desc *desc,
			struct blkcipher_walk *walk, int err)
{
	unsigned int n; /* bytes processed */
	bool more;

	if (FUNC10(err < 0))
		goto finish;

	n = walk->nbytes - err;
	walk->total -= n;
	more = (walk->total != 0);

	if (FUNC7(!(walk->flags & BLKCIPHER_WALK_SLOW))) {
		FUNC1(walk, n);
	} else {
		if (FUNC0(err)) {
			/* unexpected case; didn't process all bytes */
			err = -EINVAL;
			goto finish;
		}
		FUNC2(walk, n);
	}

	FUNC9(&walk->in, 0, more);
	FUNC9(&walk->out, 1, more);

	if (more) {
		FUNC4(desc->flags);
		return FUNC3(desc, walk);
	}
	err = 0;
finish:
	walk->nbytes = 0;
	if (walk->iv != desc->info)
		FUNC8(desc->info, walk->iv, walk->ivsize);
	if (walk->buffer != walk->page)
		FUNC6(walk->buffer);
	if (walk->page)
		FUNC5((unsigned long)walk->page);
	return err;
}