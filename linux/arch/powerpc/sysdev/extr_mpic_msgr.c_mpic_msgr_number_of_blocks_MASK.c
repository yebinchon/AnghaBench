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
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(void)
{
	unsigned int count;
	struct device_node *aliases;

	count = 0;
	aliases = FUNC0(NULL, "aliases");

	if (aliases) {
		char buf[32];

		for (;;) {
			FUNC2(buf, sizeof(buf), "mpic-msgr-block%d", count);
			if (!FUNC1(aliases, buf, NULL))
				break;

			count += 1;
		}
	}

	return count;
}