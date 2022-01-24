#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kvm_device_attr {int attr; } ;
struct TYPE_5__ {int aes_kw; int dea_kw; int apie; TYPE_1__* crycb; } ;
struct TYPE_6__ {TYPE_2__ crypto; } ;
struct kvm {int /*<<< orphan*/  lock; TYPE_3__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  dea_wrapping_key_mask; int /*<<< orphan*/  aes_wrapping_key_mask; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
#define  KVM_S390_VM_CRYPTO_DISABLE_AES_KW 133 
#define  KVM_S390_VM_CRYPTO_DISABLE_APIE 132 
#define  KVM_S390_VM_CRYPTO_DISABLE_DEA_KW 131 
#define  KVM_S390_VM_CRYPTO_ENABLE_AES_KW 130 
#define  KVM_S390_VM_CRYPTO_ENABLE_APIE 129 
#define  KVM_S390_VM_CRYPTO_ENABLE_DEA_KW 128 
 int /*<<< orphan*/  FUNC0 (struct kvm*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,int) ; 

__attribute__((used)) static int FUNC8(struct kvm *kvm, struct kvm_device_attr *attr)
{
	FUNC5(&kvm->lock);
	switch (attr->attr) {
	case KVM_S390_VM_CRYPTO_ENABLE_AES_KW:
		if (!FUNC7(kvm, 76)) {
			FUNC6(&kvm->lock);
			return -EINVAL;
		}
		FUNC2(
			kvm->arch.crypto.crycb->aes_wrapping_key_mask,
			sizeof(kvm->arch.crypto.crycb->aes_wrapping_key_mask));
		kvm->arch.crypto.aes_kw = 1;
		FUNC0(kvm, 3, "%s", "ENABLE: AES keywrapping support");
		break;
	case KVM_S390_VM_CRYPTO_ENABLE_DEA_KW:
		if (!FUNC7(kvm, 76)) {
			FUNC6(&kvm->lock);
			return -EINVAL;
		}
		FUNC2(
			kvm->arch.crypto.crycb->dea_wrapping_key_mask,
			sizeof(kvm->arch.crypto.crycb->dea_wrapping_key_mask));
		kvm->arch.crypto.dea_kw = 1;
		FUNC0(kvm, 3, "%s", "ENABLE: DEA keywrapping support");
		break;
	case KVM_S390_VM_CRYPTO_DISABLE_AES_KW:
		if (!FUNC7(kvm, 76)) {
			FUNC6(&kvm->lock);
			return -EINVAL;
		}
		kvm->arch.crypto.aes_kw = 0;
		FUNC4(kvm->arch.crypto.crycb->aes_wrapping_key_mask, 0,
			sizeof(kvm->arch.crypto.crycb->aes_wrapping_key_mask));
		FUNC0(kvm, 3, "%s", "DISABLE: AES keywrapping support");
		break;
	case KVM_S390_VM_CRYPTO_DISABLE_DEA_KW:
		if (!FUNC7(kvm, 76)) {
			FUNC6(&kvm->lock);
			return -EINVAL;
		}
		kvm->arch.crypto.dea_kw = 0;
		FUNC4(kvm->arch.crypto.crycb->dea_wrapping_key_mask, 0,
			sizeof(kvm->arch.crypto.crycb->dea_wrapping_key_mask));
		FUNC0(kvm, 3, "%s", "DISABLE: DEA keywrapping support");
		break;
	case KVM_S390_VM_CRYPTO_ENABLE_APIE:
		if (!FUNC1()) {
			FUNC6(&kvm->lock);
			return -EOPNOTSUPP;
		}
		kvm->arch.crypto.apie = 1;
		break;
	case KVM_S390_VM_CRYPTO_DISABLE_APIE:
		if (!FUNC1()) {
			FUNC6(&kvm->lock);
			return -EOPNOTSUPP;
		}
		kvm->arch.crypto.apie = 0;
		break;
	default:
		FUNC6(&kvm->lock);
		return -ENXIO;
	}

	FUNC3(kvm);
	FUNC6(&kvm->lock);
	return 0;
}