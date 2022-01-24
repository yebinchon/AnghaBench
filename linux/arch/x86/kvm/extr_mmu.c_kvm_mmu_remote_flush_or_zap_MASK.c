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
struct list_head {int dummy; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,struct list_head*) ; 
 scalar_t__ FUNC2 (struct list_head*) ; 

__attribute__((used)) static bool FUNC3(struct kvm *kvm,
					struct list_head *invalid_list,
					bool remote_flush)
{
	if (!remote_flush && FUNC2(invalid_list))
		return false;

	if (!FUNC2(invalid_list))
		FUNC1(kvm, invalid_list);
	else
		FUNC0(kvm);
	return true;
}