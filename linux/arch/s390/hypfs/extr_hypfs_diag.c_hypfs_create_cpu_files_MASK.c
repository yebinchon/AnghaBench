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
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ DIAG204_INFO_EXT ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int TMP_SIZE ; 
 scalar_t__ FUNC3 (scalar_t__,void*) ; 
 int FUNC4 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void*) ; 
 scalar_t__ FUNC6 (scalar_t__,void*) ; 
 scalar_t__ FUNC7 (scalar_t__,void*) ; 
 scalar_t__ diag204_info_type ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC9 (struct dentry*,char*,char*) ; 
 void* FUNC10 (struct dentry*,char*,scalar_t__) ; 
 struct dentry* FUNC11 (struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC13(struct dentry *cpus_dir, void *cpu_info)
{
	struct dentry *cpu_dir;
	char buffer[TMP_SIZE];
	void *rc;

	FUNC12(buffer, TMP_SIZE, "%d", FUNC4(diag204_info_type,
							    cpu_info));
	cpu_dir = FUNC11(cpus_dir, buffer);
	rc = FUNC10(cpu_dir, "mgmtime",
			      FUNC3(diag204_info_type, cpu_info) -
			      FUNC6(diag204_info_type, cpu_info));
	if (FUNC0(rc))
		return FUNC1(rc);
	rc = FUNC10(cpu_dir, "cputime",
			      FUNC6(diag204_info_type, cpu_info));
	if (FUNC0(rc))
		return FUNC1(rc);
	if (diag204_info_type == DIAG204_INFO_EXT) {
		rc = FUNC10(cpu_dir, "onlinetime",
				      FUNC7(diag204_info_type,
							    cpu_info));
		if (FUNC0(rc))
			return FUNC1(rc);
	}
	FUNC8(FUNC5(diag204_info_type, cpu_info), buffer);
	rc = FUNC9(cpu_dir, "type", buffer);
	return FUNC2(rc);
}