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
struct kvm_enc_region {int dummy; } ;
struct kvm {int /*<<< orphan*/  lock; } ;
struct enc_region {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,struct enc_region*) ; 
 struct enc_region* FUNC1 (struct kvm*,struct kvm_enc_region*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 

__attribute__((used)) static int FUNC5(struct kvm *kvm,
				     struct kvm_enc_region *range)
{
	struct enc_region *region;
	int ret;

	FUNC2(&kvm->lock);

	if (!FUNC4(kvm)) {
		ret = -ENOTTY;
		goto failed;
	}

	region = FUNC1(kvm, range);
	if (!region) {
		ret = -EINVAL;
		goto failed;
	}

	FUNC0(kvm, region);

	FUNC3(&kvm->lock);
	return 0;

failed:
	FUNC3(&kvm->lock);
	return ret;
}