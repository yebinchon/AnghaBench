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
struct bio {int /*<<< orphan*/  __bi_remaining; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CHAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC5(struct bio *bio)
{
	/*
	 * If we're not chaining, then ->__bi_remaining is always 1 and
	 * we always end io on the first invocation.
	 */
	if (!FUNC4(bio, BIO_CHAIN))
		return true;

	FUNC0(FUNC2(&bio->__bi_remaining) <= 0);

	if (FUNC1(&bio->__bi_remaining)) {
		FUNC3(bio, BIO_CHAIN);
		return true;
	}

	return false;
}