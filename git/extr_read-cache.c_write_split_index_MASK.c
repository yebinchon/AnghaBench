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
struct lock_file {int dummy; } ;
struct index_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct index_state*,struct lock_file*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct index_state*) ; 

__attribute__((used)) static int FUNC3(struct index_state *istate,
			     struct lock_file *lock,
			     unsigned flags)
{
	int ret;
	FUNC2(istate);
	ret = FUNC0(istate, lock, flags);
	FUNC1(istate);
	return ret;
}