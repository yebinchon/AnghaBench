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
struct bio {unsigned long bi_flags; int /*<<< orphan*/  __bi_remaining; } ;

/* Variables and functions */
 unsigned long BIO_RESET_BITS ; 
 int /*<<< orphan*/  BIO_RESET_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct bio *bio)
{
	unsigned long flags = bio->bi_flags & (~0UL << BIO_RESET_BITS);

	FUNC1(bio);

	FUNC2(bio, 0, BIO_RESET_BYTES);
	bio->bi_flags = flags;
	FUNC0(&bio->__bi_remaining, 1);
}