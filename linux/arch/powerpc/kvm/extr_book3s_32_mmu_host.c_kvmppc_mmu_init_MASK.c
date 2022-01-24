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
typedef  int ulong ;
struct kvmppc_vcpu_book3s {int* context_id; scalar_t__ vsid_next; int /*<<< orphan*/ * vsid_pool; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int SID_CONTEXTS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int htab ; 
 int htabmask ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 struct kvmppc_vcpu_book3s* FUNC5 (struct kvm_vcpu*) ; 

int FUNC6(struct kvm_vcpu *vcpu)
{
	struct kvmppc_vcpu_book3s *vcpu3s = FUNC5(vcpu);
	int err;
	ulong sdr1;
	int i;
	int j;

	for (i = 0; i < SID_CONTEXTS; i++) {
		err = FUNC2();
		if (err < 0)
			goto init_fail;
		vcpu3s->context_id[i] = err;

		/* Remember context id for this combination */
		for (j = 0; j < 16; j++)
			vcpu3s->vsid_pool[(i * 16) + j] = FUNC0(err, j);
	}

	vcpu3s->vsid_next = 0;

	/* Remember where the HTAB is */
	asm ( "mfsdr1 %0" : "=r"(sdr1) );
	htabmask = ((sdr1 & 0x1FF) << 16) | 0xFFC0;
	htab = (ulong)FUNC3(sdr1 & 0xffff0000);

	FUNC4(vcpu);

	return 0;

init_fail:
	for (j = 0; j < i; j++) {
		if (!vcpu3s->context_id[j])
			continue;

		FUNC1(FUNC5(vcpu)->context_id[j]);
	}

	return -1;
}