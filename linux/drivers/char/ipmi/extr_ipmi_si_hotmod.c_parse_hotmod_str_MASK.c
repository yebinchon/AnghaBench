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
struct ipmi_plat_data {unsigned int type; unsigned int space; int /*<<< orphan*/  addr_source; int /*<<< orphan*/  slave_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  regshift; int /*<<< orphan*/  regsize; int /*<<< orphan*/  regspacing; int /*<<< orphan*/  addr; int /*<<< orphan*/  iftype; } ;
typedef  enum hotmod_op { ____Placeholder_hotmod_op } hotmod_op ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPMI_PLAT_IF_SI ; 
 int /*<<< orphan*/  SI_HOTMOD ; 
 int FUNC0 (char const*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hotmod_as ; 
 int /*<<< orphan*/  hotmod_ops ; 
 int /*<<< orphan*/  hotmod_si ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static int FUNC5(const char *curr, enum hotmod_op *op,
			    struct ipmi_plat_data *h)
{
	char *s, *o;
	int rv;
	unsigned int ival;

	h->iftype = IPMI_PLAT_IF_SI;
	rv = FUNC2(hotmod_ops, &ival, "operation", &curr);
	if (rv)
		return rv;
	*op = ival;

	rv = FUNC2(hotmod_si, &ival, "interface type", &curr);
	if (rv)
		return rv;
	h->type = ival;

	rv = FUNC2(hotmod_as, &ival, "address space", &curr);
	if (rv)
		return rv;
	h->space = ival;

	s = FUNC4(curr, ',');
	if (s) {
		*s = '\0';
		s++;
	}
	rv = FUNC1(curr, 0, &h->addr);
	if (rv) {
		FUNC3("Invalid hotmod address '%s': %d\n", curr, rv);
		return rv;
	}

	while (s) {
		curr = s;
		s = FUNC4(curr, ',');
		if (s) {
			*s = '\0';
			s++;
		}
		o = FUNC4(curr, '=');
		if (o) {
			*o = '\0';
			o++;
		}
		rv = FUNC0(curr, o, "rsp", &h->regspacing);
		if (rv < 0)
			return rv;
		else if (rv)
			continue;
		rv = FUNC0(curr, o, "rsi", &h->regsize);
		if (rv < 0)
			return rv;
		else if (rv)
			continue;
		rv = FUNC0(curr, o, "rsh", &h->regshift);
		if (rv < 0)
			return rv;
		else if (rv)
			continue;
		rv = FUNC0(curr, o, "irq", &h->irq);
		if (rv < 0)
			return rv;
		else if (rv)
			continue;
		rv = FUNC0(curr, o, "ipmb", &h->slave_addr);
		if (rv < 0)
			return rv;
		else if (rv)
			continue;

		FUNC3("Invalid hotmod option '%s'\n", curr);
		return -EINVAL;
	}

	h->addr_source = SI_HOTMOD;
	return 0;
}