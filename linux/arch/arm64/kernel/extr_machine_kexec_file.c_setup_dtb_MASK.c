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
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned long u64 ;
struct kimage {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FDT_ERR_NOSPACE ; 
 int FDT_ERR_NOTFOUND ; 
 int /*<<< orphan*/  FDT_PROP_BOOTARGS ; 
 int /*<<< orphan*/  FDT_PROP_INITRD_END ; 
 int /*<<< orphan*/  FDT_PROP_INITRD_START ; 
 int /*<<< orphan*/  FDT_PROP_KASLR_SEED ; 
 int /*<<< orphan*/  FDT_PROP_RNG_SEED ; 
 int RNG_SEED_SIZE ; 
 int FUNC0 (void*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,char*) ; 
 int FUNC2 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (void*,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (void*,int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 unsigned long FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct kimage *image,
		     unsigned long initrd_load_addr, unsigned long initrd_len,
		     char *cmdline, void *dtb)
{
	int off, ret;

	ret = FUNC1(dtb, "/chosen");
	if (ret < 0)
		goto out;

	off = ret;

	/* add bootargs */
	if (cmdline) {
		ret = FUNC3(dtb, off, FDT_PROP_BOOTARGS, cmdline);
		if (ret)
			goto out;
	} else {
		ret = FUNC0(dtb, off, FDT_PROP_BOOTARGS);
		if (ret && (ret != -FDT_ERR_NOTFOUND))
			goto out;
	}

	/* add initrd-* */
	if (initrd_load_addr) {
		ret = FUNC4(dtb, off, FDT_PROP_INITRD_START,
				      initrd_load_addr);
		if (ret)
			goto out;

		ret = FUNC4(dtb, off, FDT_PROP_INITRD_END,
				      initrd_load_addr + initrd_len);
		if (ret)
			goto out;
	} else {
		ret = FUNC0(dtb, off, FDT_PROP_INITRD_START);
		if (ret && (ret != -FDT_ERR_NOTFOUND))
			goto out;

		ret = FUNC0(dtb, off, FDT_PROP_INITRD_END);
		if (ret && (ret != -FDT_ERR_NOTFOUND))
			goto out;
	}

	/* add kaslr-seed */
	ret = FUNC0(dtb, off, FDT_PROP_KASLR_SEED);
	if  (ret == -FDT_ERR_NOTFOUND)
		ret = 0;
	else if (ret)
		goto out;

	if (FUNC8()) {
		u64 seed = FUNC6();
		ret = FUNC4(dtb, off, FDT_PROP_KASLR_SEED, seed);
		if (ret)
			goto out;
	} else {
		FUNC7("RNG is not initialised: omitting \"%s\" property\n",
				FDT_PROP_KASLR_SEED);
	}

	/* add rng-seed */
	if (FUNC8()) {
		u8 rng_seed[RNG_SEED_SIZE];
		FUNC5(rng_seed, RNG_SEED_SIZE);
		ret = FUNC2(dtb, off, FDT_PROP_RNG_SEED, rng_seed,
				RNG_SEED_SIZE);
		if (ret)
			goto out;
	} else {
		FUNC7("RNG is not initialised: omitting \"%s\" property\n",
				FDT_PROP_RNG_SEED);
	}

out:
	if (ret)
		return (ret == -FDT_ERR_NOSPACE) ? -ENOMEM : -EINVAL;

	return 0;
}