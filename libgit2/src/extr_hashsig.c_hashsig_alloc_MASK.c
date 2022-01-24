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
typedef  int /*<<< orphan*/  git_hashsig_option_t ;
struct TYPE_4__ {int /*<<< orphan*/  opt; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
typedef  TYPE_1__ git_hashsig ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  hashsig_cmp_max ; 
 int /*<<< orphan*/  hashsig_cmp_min ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static git_hashsig *FUNC2(git_hashsig_option_t opts)
{
	git_hashsig *sig = FUNC0(1, sizeof(git_hashsig));
	if (!sig)
		return NULL;

	FUNC1(&sig->mins, hashsig_cmp_min);
	FUNC1(&sig->maxs, hashsig_cmp_max);
	sig->opt = opts;

	return sig;
}