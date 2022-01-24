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
typedef  int u32 ;
struct device_node {int dummy; } ;
struct assoc_arrays {int n_arrays; int array_sz; int /*<<< orphan*/  const* arrays; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct device_node* FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct assoc_arrays *aa)
{
	struct device_node *memory;
	const __be32 *prop;
	u32 len;

	memory = FUNC0("/ibm,dynamic-reconfiguration-memory");
	if (!memory)
		return -1;

	prop = FUNC1(memory, "ibm,associativity-lookup-arrays", &len);
	if (!prop || len < 2 * sizeof(unsigned int)) {
		FUNC2(memory);
		return -1;
	}

	aa->n_arrays = FUNC3(prop++, 1);
	aa->array_sz = FUNC3(prop++, 1);

	FUNC2(memory);

	/* Now that we know the number of arrays and size of each array,
	 * revalidate the size of the property read in.
	 */
	if (len < (aa->n_arrays * aa->array_sz + 2) * sizeof(unsigned int))
		return -1;

	aa->arrays = prop;
	return 0;
}