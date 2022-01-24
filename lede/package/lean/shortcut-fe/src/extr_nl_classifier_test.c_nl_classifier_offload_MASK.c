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
struct nl_msg {int dummy; } ;
struct nl_classifier_tuple {int af; unsigned char proto; unsigned short sport; unsigned short dport; int /*<<< orphan*/  dst_ip; int /*<<< orphan*/  src_ip; } ;
struct nl_classifier_instance {int /*<<< orphan*/  sock; int /*<<< orphan*/  family_id; } ;
typedef  int /*<<< orphan*/  classifier_msg ;

/* Variables and functions */
 int AF_INET ; 
 int /*<<< orphan*/  NLM_F_REQUEST ; 
 int /*<<< orphan*/  NL_AUTO_PID ; 
 int /*<<< orphan*/  NL_AUTO_SEQ ; 
 int /*<<< orphan*/  NL_CLASSIFIER_ATTR_TUPLE ; 
 int /*<<< orphan*/  NL_CLASSIFIER_CMD_ACCEL ; 
 int /*<<< orphan*/  NL_CLASSIFIER_GENL_HDRSIZE ; 
 int /*<<< orphan*/  NL_CLASSIFIER_GENL_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_classifier_tuple*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct nl_msg*,int /*<<< orphan*/ ,int,struct nl_classifier_tuple*) ; 
 struct nl_msg* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(struct nl_classifier_instance *inst,
			   unsigned char proto, unsigned long *src_saddr,
			   unsigned long *dst_saddr, unsigned short sport,
			   unsigned short dport, int af)
{
	struct nl_msg *msg;
	int ret;
	struct nl_classifier_tuple classifier_msg;

	FUNC2(&classifier_msg, 0, sizeof(classifier_msg));
	classifier_msg.af = af;
	classifier_msg.proto = proto;
	FUNC1(&classifier_msg.src_ip, src_saddr, (af == AF_INET ? 4 : 16));
	FUNC1(&classifier_msg.dst_ip, dst_saddr, (af == AF_INET ? 4 : 16));
	classifier_msg.sport = sport;
	classifier_msg.dport = dport;

	msg = FUNC5();
	if (!msg) {
		FUNC7("Unable to allocate message\n");
		return;
	}

	FUNC0(msg, NL_AUTO_PID, NL_AUTO_SEQ, inst->family_id,
		    NL_CLASSIFIER_GENL_HDRSIZE, NLM_F_REQUEST,
		    NL_CLASSIFIER_CMD_ACCEL, NL_CLASSIFIER_GENL_VERSION);
	FUNC4(msg, NL_CLASSIFIER_ATTR_TUPLE, sizeof(classifier_msg), &classifier_msg);

	ret = FUNC3(inst->sock, msg);
	if (ret < 0) {
		FUNC7("send netlink message failed.\n");
		FUNC6(msg);
		return;
	}

	FUNC6(msg);
	FUNC7("nl classifier offload connection successful\n");
}