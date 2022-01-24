#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 struct device_node* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct device_node*,char*,unsigned int*) ; 
 int /*<<< orphan*/  opal_kobj ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 TYPE_1__ symbol_map_attr ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(void)
{
	const __be64 *syms;
	unsigned int size;
	struct device_node *fw;
	int rc;

	fw = FUNC2("/ibm,opal/firmware");
	if (!fw)
		return;
	syms = FUNC3(fw, "symbol-map", &size);
	if (!syms || size != 2 * sizeof(__be64))
		return;

	/* Setup attributes */
	symbol_map_attr.private = FUNC0(FUNC1(syms[0]));
	symbol_map_attr.size = FUNC1(syms[1]);

	rc = FUNC5(opal_kobj, &symbol_map_attr);
	if (rc)
		FUNC4("Error %d creating OPAL symbols file\n", rc);
}