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
typedef  scalar_t__ u64 ;
struct cpuinfo_x86 {int x86_phys_bits; } ;

/* Variables and functions */
 scalar_t__ MKTME_DISABLED ; 
 scalar_t__ MKTME_ENABLED ; 
 scalar_t__ MKTME_UNINITIALIZED ; 
 int /*<<< orphan*/  MSR_IA32_TME_ACTIVATE ; 
 scalar_t__ TME_ACTIVATE_CRYPTO_AES_XTS_128 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ TME_ACTIVATE_POLICY_AES_XTS_128 ; 
 scalar_t__ mktme_status ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct cpuinfo_x86 *c)
{
	u64 tme_activate, tme_policy, tme_crypto_algs;
	int keyid_bits = 0, nr_keyids = 0;
	static u64 tme_activate_cpu0 = 0;

	FUNC10(MSR_IA32_TME_ACTIVATE, tme_activate);

	if (mktme_status != MKTME_UNINITIALIZED) {
		if (tme_activate != tme_activate_cpu0) {
			/* Broken BIOS? */
			FUNC6("x86/tme: configuration is inconsistent between CPUs\n");
			FUNC6("x86/tme: MKTME is not usable\n");
			mktme_status = MKTME_DISABLED;

			/* Proceed. We may need to exclude bits from x86_phys_bits. */
		}
	} else {
		tme_activate_cpu0 = tme_activate;
	}

	if (!FUNC3(tme_activate) || !FUNC1(tme_activate)) {
		FUNC8("x86/tme: not enabled by BIOS\n");
		mktme_status = MKTME_DISABLED;
		return;
	}

	if (mktme_status != MKTME_UNINITIALIZED)
		goto detect_keyid_bits;

	FUNC7("x86/tme: enabled by BIOS\n");

	tme_policy = FUNC4(tme_activate);
	if (tme_policy != TME_ACTIVATE_POLICY_AES_XTS_128)
		FUNC9("x86/tme: Unknown policy is active: %#llx\n", tme_policy);

	tme_crypto_algs = FUNC0(tme_activate);
	if (!(tme_crypto_algs & TME_ACTIVATE_CRYPTO_AES_XTS_128)) {
		FUNC5("x86/mktme: No known encryption algorithm is supported: %#llx\n",
				tme_crypto_algs);
		mktme_status = MKTME_DISABLED;
	}
detect_keyid_bits:
	keyid_bits = FUNC2(tme_activate);
	nr_keyids = (1UL << keyid_bits) - 1;
	if (nr_keyids) {
		FUNC8("x86/mktme: enabled by BIOS\n");
		FUNC8("x86/mktme: %d KeyIDs available\n", nr_keyids);
	} else {
		FUNC8("x86/mktme: disabled by BIOS\n");
	}

	if (mktme_status == MKTME_UNINITIALIZED) {
		/* MKTME is usable */
		mktme_status = MKTME_ENABLED;
	}

	/*
	 * KeyID bits effectively lower the number of physical address
	 * bits.  Update cpuinfo_x86::x86_phys_bits accordingly.
	 */
	c->x86_phys_bits -= keyid_bits;
}