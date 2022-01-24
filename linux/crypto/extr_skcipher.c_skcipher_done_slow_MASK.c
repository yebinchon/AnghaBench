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
typedef  int /*<<< orphan*/  u8 ;
struct skcipher_walk {int flags; int /*<<< orphan*/  out; scalar_t__ alignmask; scalar_t__ buffer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,scalar_t__) ; 
 int SKCIPHER_WALK_PHYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct skcipher_walk *walk, unsigned int bsize)
{
	u8 *addr;

	addr = (u8 *)FUNC0((unsigned long)walk->buffer, walk->alignmask + 1);
	addr = FUNC2(addr, bsize);
	FUNC1(addr, &walk->out, bsize,
			       (walk->flags & SKCIPHER_WALK_PHYS) ? 2 : 1);
	return 0;
}