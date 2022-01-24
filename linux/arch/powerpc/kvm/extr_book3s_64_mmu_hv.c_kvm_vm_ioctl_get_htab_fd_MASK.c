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
struct kvm_htab_ctx {int flags; int first_pass; int /*<<< orphan*/  index; struct kvm* kvm; } ;
struct kvm_get_htab_fd {int flags; int /*<<< orphan*/  start_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  hpte_mod_interest; } ;
struct kvm {int /*<<< orphan*/  slots_lock; int /*<<< orphan*/  srcu; TYPE_1__ arch; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KVM_GET_HTAB_BOLTED_ONLY ; 
 int KVM_GET_HTAB_WRITE ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int FUNC0 (char*,int /*<<< orphan*/ *,struct kvm_htab_ctx*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_htab_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  kvm_htab_fops ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 struct kvm_htab_ctx* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct kvm *kvm, struct kvm_get_htab_fd *ghf)
{
	int ret;
	struct kvm_htab_ctx *ctx;
	int rwflag;

	/* reject flags we don't recognize */
	if (ghf->flags & ~(KVM_GET_HTAB_BOLTED_ONLY | KVM_GET_HTAB_WRITE))
		return -EINVAL;
	ctx = FUNC5(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;
	FUNC3(kvm);
	ctx->kvm = kvm;
	ctx->index = ghf->start_index;
	ctx->flags = ghf->flags;
	ctx->first_pass = 1;

	rwflag = (ghf->flags & KVM_GET_HTAB_WRITE) ? O_WRONLY : O_RDONLY;
	ret = FUNC0("kvm-htab", &kvm_htab_fops, ctx, rwflag | O_CLOEXEC);
	if (ret < 0) {
		FUNC2(ctx);
		FUNC4(kvm);
		return ret;
	}

	if (rwflag == O_RDONLY) {
		FUNC6(&kvm->slots_lock);
		FUNC1(&kvm->arch.hpte_mod_interest);
		/* make sure kvmppc_do_h_enter etc. see the increment */
		FUNC8(&kvm->srcu);
		FUNC7(&kvm->slots_lock);
	}

	return ret;
}