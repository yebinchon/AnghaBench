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
struct property {int* value; int length; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct property* FUNC2 (struct property*,int) ; 
 scalar_t__ FUNC3 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,struct property*) ; 

__attribute__((used)) static bool FUNC6(struct device_node *dr_node,
			 struct property *ala_prop,
			 const u32 *lmb_assoc, u32 *aa_index)
{
	u32 *assoc_arrays, new_prop_size;
	struct property *new_prop;
	int aa_arrays, aa_array_entries, aa_array_sz;
	int i, index;

	/*
	 * The ibm,associativity-lookup-arrays property is defined to be
	 * a 32-bit value specifying the number of associativity arrays
	 * followed by a 32-bitvalue specifying the number of entries per
	 * array, followed by the associativity arrays.
	 */
	assoc_arrays = ala_prop->value;

	aa_arrays = FUNC0(assoc_arrays[0]);
	aa_array_entries = FUNC0(assoc_arrays[1]);
	aa_array_sz = aa_array_entries * sizeof(u32);

	for (i = 0; i < aa_arrays; i++) {
		index = (i * aa_array_entries) + 2;

		if (FUNC3(&assoc_arrays[index], &lmb_assoc[1], aa_array_sz))
			continue;

		*aa_index = i;
		return true;
	}

	new_prop_size = ala_prop->length + aa_array_sz;
	new_prop = FUNC2(ala_prop, new_prop_size);
	if (!new_prop)
		return false;

	assoc_arrays = new_prop->value;

	/* increment the number of entries in the lookup array */
	assoc_arrays[0] = FUNC1(aa_arrays + 1);

	/* copy the new associativity into the lookup array */
	index = aa_arrays * aa_array_entries + 2;
	FUNC4(&assoc_arrays[index], &lmb_assoc[1], aa_array_sz);

	FUNC5(dr_node, new_prop);

	/*
	 * The associativity lookup array index for this lmb is
	 * number of entries - 1 since we added its associativity
	 * to the end of the lookup array.
	 */
	*aa_index = FUNC0(assoc_arrays[0]) - 1;
	return true;
}