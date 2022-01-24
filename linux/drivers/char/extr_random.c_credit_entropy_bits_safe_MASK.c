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
struct entropy_store {TYPE_1__* poolinfo; } ;
struct TYPE_2__ {int poolwords; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct entropy_store*,int) ; 
 int FUNC1 (int,int const) ; 

__attribute__((used)) static int FUNC2(struct entropy_store *r, int nbits)
{
	const int nbits_max = r->poolinfo->poolwords * 32;

	if (nbits < 0)
		return -EINVAL;

	/* Cap the value to avoid overflows */
	nbits = FUNC1(nbits,  nbits_max);

	FUNC0(r, nbits);
	return 0;
}