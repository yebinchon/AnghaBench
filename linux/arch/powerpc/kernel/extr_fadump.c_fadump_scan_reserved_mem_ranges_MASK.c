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
typedef  scalar_t__ u64 ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 struct device_node* FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  reserved_mrange_info ; 

__attribute__((used)) static inline int FUNC5(void)
{
	struct device_node *root;
	const __be32 *prop;
	int len, ret = -1;
	unsigned long i;

	root = FUNC1("/");
	if (!root)
		return ret;

	prop = FUNC2(root, "reserved-ranges", &len);
	if (!prop)
		return ret;

	/*
	 * Each reserved range is an (address,size) pair, 2 cells each,
	 * totalling 4 cells per range.
	 */
	for (i = 0; i < len / (sizeof(*prop) * 4); i++) {
		u64 base, size;

		base = FUNC3(prop + (i * 4) + 0, 2);
		size = FUNC3(prop + (i * 4) + 2, 2);

		if (size) {
			ret = FUNC0(&reserved_mrange_info,
						   base, base + size);
			if (ret < 0) {
				FUNC4("some reserved ranges are ignored!\n");
				break;
			}
		}
	}

	return ret;
}