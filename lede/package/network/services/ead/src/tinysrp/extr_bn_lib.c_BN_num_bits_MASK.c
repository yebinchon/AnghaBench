#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int top; scalar_t__* d; } ;
typedef  scalar_t__ BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int BN_BITS2 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 

int FUNC3(const BIGNUM *a)
	{
	BN_ULONG l;
	int i;

	FUNC2(a);

	if (a->top == 0) return(0);
	l=a->d[a->top-1];
	FUNC1(l != 0);
	i=(a->top-1)*BN_BITS2;
	return(i+FUNC0(l));
	}