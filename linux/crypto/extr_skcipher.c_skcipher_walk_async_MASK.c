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
struct skcipher_walk {int /*<<< orphan*/  buffers; int /*<<< orphan*/  flags; } ;
struct skcipher_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SKCIPHER_WALK_PHYS ; 
 int FUNC1 (struct skcipher_walk*,struct skcipher_request*) ; 

int FUNC2(struct skcipher_walk *walk,
			struct skcipher_request *req)
{
	walk->flags |= SKCIPHER_WALK_PHYS;

	FUNC0(&walk->buffers);

	return FUNC1(walk, req);
}