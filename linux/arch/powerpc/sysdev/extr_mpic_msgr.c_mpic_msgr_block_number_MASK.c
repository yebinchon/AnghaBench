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
struct property {int /*<<< orphan*/  value; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 unsigned int FUNC0 () ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ) ; 
 struct property* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct device_node *node)
{
	struct device_node *aliases;
	unsigned int index, number_of_blocks;
	char buf[64];

	number_of_blocks = FUNC0();
	aliases = FUNC1(NULL, "aliases");
	if (!aliases)
		return -1;

	for (index = 0; index < number_of_blocks; ++index) {
		struct property *prop;

		FUNC4(buf, sizeof(buf), "mpic-msgr-block%d", index);
		prop = FUNC3(aliases, buf, NULL);
		if (node == FUNC2(prop->value))
			break;
	}

	return index == number_of_blocks ? -1 : index;
}