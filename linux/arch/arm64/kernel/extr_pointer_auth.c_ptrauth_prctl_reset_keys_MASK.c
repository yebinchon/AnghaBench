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
struct ptrauth_keys {int /*<<< orphan*/  apga; int /*<<< orphan*/  apdb; int /*<<< orphan*/  apda; int /*<<< orphan*/  apib; int /*<<< orphan*/  apia; } ;
struct TYPE_2__ {struct ptrauth_keys keys_user; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PR_PAC_APDAKEY ; 
 unsigned long PR_PAC_APDBKEY ; 
 unsigned long PR_PAC_APGAKEY ; 
 unsigned long PR_PAC_APIAKEY ; 
 unsigned long PR_PAC_APIBKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ptrauth_keys*) ; 
 int /*<<< orphan*/  FUNC2 (struct ptrauth_keys*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct task_struct *tsk, unsigned long arg)
{
	struct ptrauth_keys *keys = &tsk->thread.keys_user;
	unsigned long addr_key_mask = PR_PAC_APIAKEY | PR_PAC_APIBKEY |
				      PR_PAC_APDAKEY | PR_PAC_APDBKEY;
	unsigned long key_mask = addr_key_mask | PR_PAC_APGAKEY;

	if (!FUNC3() && !FUNC4())
		return -EINVAL;

	if (!arg) {
		FUNC1(keys);
		FUNC2(keys);
		return 0;
	}

	if (arg & ~key_mask)
		return -EINVAL;

	if (((arg & addr_key_mask) && !FUNC3()) ||
	    ((arg & PR_PAC_APGAKEY) && !FUNC4()))
		return -EINVAL;

	if (arg & PR_PAC_APIAKEY)
		FUNC0(&keys->apia, sizeof(keys->apia));
	if (arg & PR_PAC_APIBKEY)
		FUNC0(&keys->apib, sizeof(keys->apib));
	if (arg & PR_PAC_APDAKEY)
		FUNC0(&keys->apda, sizeof(keys->apda));
	if (arg & PR_PAC_APDBKEY)
		FUNC0(&keys->apdb, sizeof(keys->apdb));
	if (arg & PR_PAC_APGAKEY)
		FUNC0(&keys->apga, sizeof(keys->apga));

	FUNC2(keys);

	return 0;
}