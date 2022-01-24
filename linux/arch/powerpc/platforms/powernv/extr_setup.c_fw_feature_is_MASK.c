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

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int FUNC2 (struct device_node*,char const*) ; 

__attribute__((used)) static bool FUNC3(const char *state, const char *name,
			  struct device_node *fw_features)
{
	struct device_node *np;
	bool rc = false;

	np = FUNC0(fw_features, name);
	if (np) {
		rc = FUNC2(np, state);
		FUNC1(np);
	}

	return rc;
}