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
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ BN_MONT_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  BN_FLG_MALLOCED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 

BN_MONT_CTX *FUNC2(void)
	{
	BN_MONT_CTX *ret;

	if ((ret=(BN_MONT_CTX *)FUNC1(sizeof(BN_MONT_CTX))) == NULL)
		return(NULL);

	FUNC0(ret);
	ret->flags=BN_FLG_MALLOCED;
	return(ret);
	}