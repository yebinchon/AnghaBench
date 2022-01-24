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
struct nl_classifier_instance {scalar_t__ family_id; scalar_t__ group_id; int /*<<< orphan*/ * sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL_CB_CUSTOM ; 
 int /*<<< orphan*/  NL_CB_VALID ; 
 char* NL_CLASSIFIER_GENL_FAMILY ; 
 char* NL_CLASSIFIER_GENL_GROUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  nl_classifier_msg_recv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

int FUNC10(struct nl_classifier_instance *inst)
{
	int ret;

	inst->sock = FUNC5();
	if (!inst->sock) {
		FUNC9("Unable to allocation socket.\n");
		return -1;
	}
	FUNC0(inst->sock);

	inst->family_id = FUNC1(inst->sock, NL_CLASSIFIER_GENL_FAMILY);
	if (inst->family_id < 0) {
		FUNC9("Unable to resolve family %s\n", NL_CLASSIFIER_GENL_FAMILY);
		goto init_failed;
	}

	inst->group_id = FUNC2(inst->sock, NL_CLASSIFIER_GENL_FAMILY, NL_CLASSIFIER_GENL_GROUP);
	if (inst->group_id < 0) {
		FUNC9("Unable to resolve mcast group %s\n", NL_CLASSIFIER_GENL_GROUP);
		goto init_failed;
	}

	ret = FUNC4(inst->sock, inst->group_id);
	if (ret < 0) {
		FUNC9("Unable to add membership\n");
		goto init_failed;
	}

	FUNC6(inst->sock);
	FUNC8(inst->sock, NL_CB_VALID, NL_CB_CUSTOM, nl_classifier_msg_recv, NULL);

	FUNC9("nl classifier init successful\n");
	return 0;

init_failed:
	if (inst->sock) {
		FUNC3(inst->sock);
		FUNC7(inst->sock);
		inst->sock = NULL;
	}
	return -1;
}