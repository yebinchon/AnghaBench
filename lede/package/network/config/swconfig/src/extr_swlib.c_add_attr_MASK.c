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
struct switch_attr {void* description; void* name; void* type; void* id; struct switch_attr* next; int /*<<< orphan*/  atype; int /*<<< orphan*/  dev; } ;
struct nl_msg {int dummy; } ;
struct genlmsghdr {int dummy; } ;
struct attrlist_arg {struct switch_attr** head; struct switch_attr* prev; int /*<<< orphan*/  atype; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int NL_SKIP ; 
 scalar_t__ SWITCH_ATTR_MAX ; 
 size_t SWITCH_ATTR_OP_DESCRIPTION ; 
 size_t SWITCH_ATTR_OP_ID ; 
 size_t SWITCH_ATTR_OP_NAME ; 
 size_t SWITCH_ATTR_OP_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct genlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct genlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 void* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct genlmsghdr* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nl_msg*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 struct switch_attr* FUNC8 (int) ; 
 scalar_t__* tb ; 

__attribute__((used)) static int
FUNC9(struct nl_msg *msg, void *ptr)
{
	struct genlmsghdr *gnlh = FUNC5(FUNC6(msg));
	struct attrlist_arg *arg = ptr;
	struct switch_attr *new;

	if (FUNC4(tb, SWITCH_ATTR_MAX - 1, FUNC0(gnlh, 0),
			FUNC1(gnlh, 0), NULL) < 0)
		goto done;

	new = FUNC8(sizeof(struct switch_attr));
	if (!new)
		goto done;

	new->dev = arg->dev;
	new->atype = arg->atype;
	if (arg->prev) {
		arg->prev->next = new;
	} else {
		arg->prev = *arg->head;
	}
	*arg->head = new;
	arg->head = &new->next;

	if (tb[SWITCH_ATTR_OP_ID])
		new->id = FUNC3(tb[SWITCH_ATTR_OP_ID]);
	if (tb[SWITCH_ATTR_OP_TYPE])
		new->type = FUNC3(tb[SWITCH_ATTR_OP_TYPE]);
	if (tb[SWITCH_ATTR_OP_NAME])
		new->name = FUNC7(FUNC2(tb[SWITCH_ATTR_OP_NAME]));
	if (tb[SWITCH_ATTR_OP_DESCRIPTION])
		new->description = FUNC7(FUNC2(tb[SWITCH_ATTR_OP_DESCRIPTION]));

done:
	return NL_SKIP;
}