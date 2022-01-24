#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int neg; int top; } ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int) ; 

int FUNC5(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
	{
	int max;
	int add=0,neg=0;
	const BIGNUM *tmp;

	FUNC3(a);
	FUNC3(b);

	/*  a -  b      a-b
	 *  a - -b      a+b
	 * -a -  b      -(a+b)
	 * -a - -b      b-a
	 */
	if (a->neg)
		{
		if (b->neg)
			{ tmp=a; a=b; b=tmp; }
		else
			{ add=1; neg=1; }
		}
	else
		{
		if (b->neg) { add=1; neg=0; }
		}

	if (add)
		{
		if (!FUNC0(r,a,b)) return(0);
		r->neg=neg;
		return(1);
		}

	/* We are actually doing a - b :-) */

	max=(a->top > b->top)?a->top:b->top;
	if (FUNC4(r,max) == NULL) return(0);
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