#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
struct attr_check {TYPE_1__* items; } ;
struct TYPE_5__ {unsigned int rule_bits; int /*<<< orphan*/  exclude_default; int /*<<< orphan*/  loosens_error; } ;
struct TYPE_4__ {char* value; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 struct attr_check* FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct index_state*,char const*,struct attr_check*) ; 
 int FUNC6 (char const*) ; 
 int whitespace_rule_cfg ; 
 TYPE_2__* whitespace_rule_names ; 
 int FUNC7 (int) ; 

unsigned FUNC8(struct index_state *istate, const char *pathname)
{
	static struct attr_check *attr_whitespace_rule;
	const char *value;

	if (!attr_whitespace_rule)
		attr_whitespace_rule = FUNC4("whitespace", NULL);

	FUNC5(istate, pathname, attr_whitespace_rule);
	value = attr_whitespace_rule->items[0].value;
	if (FUNC2(value)) {
		/* true (whitespace) */
		unsigned all_rule = FUNC7(whitespace_rule_cfg);
		int i;
		for (i = 0; i < FUNC0(whitespace_rule_names); i++)
			if (!whitespace_rule_names[i].loosens_error &&
			    !whitespace_rule_names[i].exclude_default)
				all_rule |= whitespace_rule_names[i].rule_bits;
		return all_rule;
	} else if (FUNC1(value)) {
		/* false (-whitespace) */
		return FUNC7(whitespace_rule_cfg);
	} else if (FUNC3(value)) {
		/* reset to default (!whitespace) */
		return whitespace_rule_cfg;
	} else {
		/* string */
		return FUNC6(value);
	}
}