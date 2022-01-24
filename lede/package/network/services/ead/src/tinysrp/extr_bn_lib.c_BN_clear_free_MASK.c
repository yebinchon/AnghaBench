#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dmax; struct TYPE_6__* d; } ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_FLG_MALLOCED ; 
 int /*<<< orphan*/  BN_FLG_STATIC_DATA ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(BIGNUM *a)
	{
	int i;

	if (a == NULL) return;
	if (a->d != NULL)
		{
		FUNC2(a->d,0,a->dmax*sizeof(a->d[0]));
		if (!(FUNC0(a,BN_FLG_STATIC_DATA)))
			FUNC1(a->d);
		}
	i=FUNC0(a,BN_FLG_MALLOCED);
	FUNC2(a,0,sizeof(BIGNUM));
	if (i)
		FUNC1(a);
	}