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
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int TMP_SIZE ; 
 int /*<<< orphan*/  diag204_info_type ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (void*,char*,char*) ; 
 void* FUNC5 (void*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (void*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC11(struct dentry *cpus_dir, void *cpu_info)
{
	struct dentry *cpu_dir;
	char buffer[TMP_SIZE];
	void *rc;

	FUNC10(buffer, TMP_SIZE, "%i", FUNC7(diag204_info_type,
							    cpu_info));
	cpu_dir = FUNC6(cpus_dir, buffer);
	if (FUNC0(cpu_dir))
		return FUNC1(cpu_dir);
	rc = FUNC5(cpu_dir, "mgmtime",
			      FUNC9(diag204_info_type, cpu_info));
	if (FUNC0(rc))
		return FUNC1(rc);
	FUNC3(FUNC8(diag204_info_type, cpu_info), buffer);
	rc = FUNC4(cpu_dir, "type", buffer);
	return FUNC2(rc);
}