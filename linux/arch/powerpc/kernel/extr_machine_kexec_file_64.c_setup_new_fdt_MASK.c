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
typedef  scalar_t__ uint64_t ;
struct kimage {int dummy; } ;
typedef  int /*<<< orphan*/  fdt64_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int FDT_ERR_NOTFOUND ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int FUNC3 (void*,unsigned long,unsigned long) ; 
 int FUNC4 (void*,int,char*) ; 
 int FUNC5 (void*,int,char*) ; 
 void* FUNC6 (void*,int,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (void*,char*) ; 
 int FUNC8 (void*,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (void*,int,char*,char const*) ; 
 int FUNC10 (void*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initial_boot_params ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct kimage const*,void*,int) ; 

int FUNC17(const struct kimage *image, void *fdt,
		  unsigned long initrd_load_addr, unsigned long initrd_len,
		  const char *cmdline)
{
	int ret, chosen_node;
	const void *prop;

	/* Remove memory reservation for the current device tree. */
	ret = FUNC1(fdt, FUNC0(initial_boot_params),
				 FUNC12(initial_boot_params));
	if (ret == 0)
		FUNC13("Removed old device tree reservation.\n");
	else if (ret != -ENOENT)
		return ret;

	chosen_node = FUNC7(fdt, "/chosen");
	if (chosen_node == -FDT_ERR_NOTFOUND) {
		chosen_node = FUNC4(fdt, FUNC7(fdt, "/"),
					      "chosen");
		if (chosen_node < 0) {
			FUNC14("Error creating /chosen.\n");
			return -EINVAL;
		}
	} else if (chosen_node < 0) {
		FUNC14("Malformed device tree: error reading /chosen.\n");
		return -EINVAL;
	}

	/* Did we boot using an initrd? */
	prop = FUNC6(fdt, chosen_node, "linux,initrd-start", NULL);
	if (prop) {
		uint64_t tmp_start, tmp_end, tmp_size;

		tmp_start = FUNC2(*((const fdt64_t *) prop));

		prop = FUNC6(fdt, chosen_node, "linux,initrd-end", NULL);
		if (!prop) {
			FUNC14("Malformed device tree.\n");
			return -EINVAL;
		}
		tmp_end = FUNC2(*((const fdt64_t *) prop));

		/*
		 * kexec reserves exact initrd size, while firmware may
		 * reserve a multiple of PAGE_SIZE, so check for both.
		 */
		tmp_size = tmp_end - tmp_start;
		ret = FUNC1(fdt, tmp_start, tmp_size);
		if (ret == -ENOENT)
			ret = FUNC1(fdt, tmp_start,
						 FUNC15(tmp_size, PAGE_SIZE));
		if (ret == 0)
			FUNC13("Removed old initrd reservation.\n");
		else if (ret != -ENOENT)
			return ret;

		/* If there's no new initrd, delete the old initrd's info. */
		if (initrd_len == 0) {
			ret = FUNC5(fdt, chosen_node,
					  "linux,initrd-start");
			if (ret) {
				FUNC14("Error deleting linux,initrd-start.\n");
				return -EINVAL;
			}

			ret = FUNC5(fdt, chosen_node, "linux,initrd-end");
			if (ret) {
				FUNC14("Error deleting linux,initrd-end.\n");
				return -EINVAL;
			}
		}
	}

	if (initrd_len) {
		ret = FUNC10(fdt, chosen_node,
				      "linux,initrd-start",
				      initrd_load_addr);
		if (ret < 0)
			goto err;

		/* initrd-end is the first address after the initrd image. */
		ret = FUNC10(fdt, chosen_node, "linux,initrd-end",
				      initrd_load_addr + initrd_len);
		if (ret < 0)
			goto err;

		ret = FUNC3(fdt, initrd_load_addr, initrd_len);
		if (ret) {
			FUNC14("Error reserving initrd memory: %s\n",
			       FUNC11(ret));
			return -EINVAL;
		}
	}

	if (cmdline != NULL) {
		ret = FUNC9(fdt, chosen_node, "bootargs", cmdline);
		if (ret < 0)
			goto err;
	} else {
		ret = FUNC5(fdt, chosen_node, "bootargs");
		if (ret && ret != -FDT_ERR_NOTFOUND) {
			FUNC14("Error deleting bootargs.\n");
			return -EINVAL;
		}
	}

	ret = FUNC16(image, fdt, chosen_node);
	if (ret) {
		FUNC14("Error setting up the new device tree.\n");
		return ret;
	}

	ret = FUNC8(fdt, chosen_node, "linux,booted-from-kexec", NULL, 0);
	if (ret)
		goto err;

	return 0;

err:
	FUNC14("Error setting up the new device tree.\n");
	return -EINVAL;
}