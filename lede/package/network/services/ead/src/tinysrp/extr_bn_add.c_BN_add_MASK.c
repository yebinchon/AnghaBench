#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int neg; } ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 

int FUNC4(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
	{
	const BIGNUM *tmp;

	FUNC3(a);
	FUNC3(b);

	/*  a +  b      a+b
	 *  a + -b      a-b
	 * -a +  b      b-a
	 * -a + -b      -(a+b)
	 */
	if (a->neg ^ b->neg)
		{
		/* only one is negative */
		if (a->neg)
			{ tmp=a; a=b; b=tmp; }

		/* we are now a - b */

		if (FUNC1(a,b) < 0)
			{
			if (!FUNC2(r,b,a)) return(0);
			r->neg=1;
			}
		else
			{
			if (!FUNC2(r,a,b)) return(0);
			r->neg=0;
			}
		return(1);
		}

	if (a->neg) /* both are neg */
		r->neg=1;
	else
		r->neg=0;

	if (!FUNC0(r,a,b)) return(0);
	return(1);
	}