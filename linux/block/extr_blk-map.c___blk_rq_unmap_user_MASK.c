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
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_USER_MAPPED ; 
 scalar_t__ FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 

__attribute__((used)) static int FUNC3(struct bio *bio)
{
	int ret = 0;

	if (bio) {
		if (FUNC0(bio, BIO_USER_MAPPED))
			FUNC2(bio);
		else
			ret = FUNC1(bio);
	}

	return ret;
}