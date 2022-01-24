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
typedef  void dentry ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  diag204_info_type ; 
 int FUNC2 (void*,void*) ; 
 void* FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC7(struct dentry *parent_dir, void *phys_hdr)
{
	int i;
	void *cpu_info;
	struct dentry *cpus_dir;

	cpus_dir = FUNC3(parent_dir, "cpus");
	if (FUNC1(cpus_dir))
		return cpus_dir;
	cpu_info = phys_hdr + FUNC6(diag204_info_type);
	for (i = 0; i < FUNC5(diag204_info_type, phys_hdr); i++) {
		int rc;
		rc = FUNC2(cpus_dir, cpu_info);
		if (rc)
			return FUNC0(rc);
		cpu_info += FUNC4(diag204_info_type);
	}
	return cpu_info;
}