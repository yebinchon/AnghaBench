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
struct x_info_blk_hdr {int dummy; } ;
typedef  void dentry ;

/* Variables and functions */
 int DIAG204_LPAR_PHYS_FLG ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  diag204_info_type ; 
 void* FUNC2 () ; 
 void* FUNC3 (void*,void*) ; 
 void* FUNC4 (void*,void*) ; 
 void* FUNC5 (void*,char*,char*) ; 
 void* FUNC6 (void*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct dentry *root)
{
	struct dentry *systems_dir, *hyp_dir;
	void *time_hdr, *part_hdr;
	int i, rc;
	void *buffer, *ptr;

	buffer = FUNC2();
	if (FUNC0(buffer))
		return FUNC1(buffer);

	systems_dir = FUNC6(root, "systems");
	if (FUNC0(systems_dir)) {
		rc = FUNC1(systems_dir);
		goto err_out;
	}
	time_hdr = (struct x_info_blk_hdr *)buffer;
	part_hdr = time_hdr + FUNC9(diag204_info_type);
	for (i = 0; i < FUNC8(diag204_info_type, time_hdr); i++) {
		part_hdr = FUNC3(systems_dir, part_hdr);
		if (FUNC0(part_hdr)) {
			rc = FUNC1(part_hdr);
			goto err_out;
		}
	}
	if (FUNC7(diag204_info_type, time_hdr) &
	    DIAG204_LPAR_PHYS_FLG) {
		ptr = FUNC4(root, part_hdr);
		if (FUNC0(ptr)) {
			rc = FUNC1(ptr);
			goto err_out;
		}
	}
	hyp_dir = FUNC6(root, "hyp");
	if (FUNC0(hyp_dir)) {
		rc = FUNC1(hyp_dir);
		goto err_out;
	}
	ptr = FUNC5(hyp_dir, "type", "LPAR Hypervisor");
	if (FUNC0(ptr)) {
		rc = FUNC1(ptr);
		goto err_out;
	}
	rc = 0;

err_out:
	return rc;
}