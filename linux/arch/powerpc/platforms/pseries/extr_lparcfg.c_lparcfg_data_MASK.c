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
struct seq_file {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  MODULE_VERS ; 
 unsigned int FUNC0 (int /*<<< orphan*/  const*) ; 
 struct device_node* FUNC1 (char*) ; 
 void* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int FUNC4 (struct seq_file*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *v)
{
	struct device_node *rootdn;
	const char *model = "";
	const char *system_id = "";
	const char *tmp;
	const __be32 *lp_index_ptr;
	unsigned int lp_index = 0;

	FUNC5(m, "%s %s\n", MODULE_NAME, MODULE_VERS);

	rootdn = FUNC1("/");
	if (rootdn) {
		tmp = FUNC2(rootdn, "model", NULL);
		if (tmp)
			model = tmp;
		tmp = FUNC2(rootdn, "system-id", NULL);
		if (tmp)
			system_id = tmp;
		lp_index_ptr = FUNC2(rootdn, "ibm,partition-no",
					NULL);
		if (lp_index_ptr)
			lp_index = FUNC0(lp_index_ptr);
		FUNC3(rootdn);
	}
	FUNC5(m, "serial_number=%s\n", system_id);
	FUNC5(m, "system_type=%s\n", model);
	FUNC5(m, "partition_id=%d\n", (int)lp_index);

	return FUNC4(m, v);
}