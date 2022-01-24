#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nl_msg {int dummy; } ;
struct TYPE_7__ {unsigned long s_addr; } ;
struct TYPE_8__ {TYPE_3__ in; } ;
struct TYPE_5__ {unsigned long s_addr; } ;
struct TYPE_6__ {TYPE_1__ in; } ;
struct fast_classifier_tuple {unsigned char proto; unsigned short sport; unsigned short dport; char* smac; float* dmac; TYPE_4__ dst_saddr; TYPE_2__ src_saddr; } ;
typedef  int /*<<< orphan*/  fc_msg ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FAST_CLASSIFIER_C_OFFLOAD ; 
 int /*<<< orphan*/  FAST_CLASSIFIER_GENL_HDRSIZE ; 
 int /*<<< orphan*/  FAST_CLASSIFIER_GENL_VERSION ; 
 int INET_ADDRSTRLEN ; 
 int /*<<< orphan*/  NLM_F_REQUEST ; 
 int /*<<< orphan*/  NL_AUTO_PID ; 
 int /*<<< orphan*/  NL_AUTO_SEQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  family ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,unsigned long*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nl_msg*,int,int,struct fast_classifier_tuple*) ; 
 struct nl_msg* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  sock ; 

void FUNC12(unsigned char proto, unsigned long src_saddr,
				  unsigned long dst_saddr, unsigned short sport,
				  unsigned short dport)
{
	struct nl_msg *msg;
	int ret;
#ifdef DEBUG
	char src_str[INET_ADDRSTRLEN];
	char dst_str[INET_ADDRSTRLEN];
#endif
	struct fast_classifier_tuple fc_msg;

#ifdef DEBUG
	printf("DEBUG: would offload: %d, %s, %s, %d, %d\n", proto,
	       inet_ntop(AF_INET, &src_saddr,  src_str, INET_ADDRSTRLEN),
	       inet_ntop(AF_INET, &dst_saddr,  dst_str, INET_ADDRSTRLEN),
	       sport, dport);
#endif

	fc_msg.proto = proto;
	fc_msg.src_saddr.in.s_addr = src_saddr;
	fc_msg.dst_saddr.in.s_addr = dst_saddr;
	fc_msg.sport = sport;
	fc_msg.dport = dport;
	fc_msg.smac[0] = 'a';
	fc_msg.smac[1] = 'b';
	fc_msg.smac[2] = 'c';
	fc_msg.smac[3] = 'd';
	fc_msg.smac[4] = 'e';
	fc_msg.smac[5] = 'f';
	fc_msg.dmac[0] = 'f';
	fc_msg.dmac[1] = 'e';
	fc_msg.dmac[2] = 'd';
	fc_msg.dmac[3] = 'c';
	fc_msg.dmac[4] = 'b';
	fc_msg.dmac[5] = 'a';

	if (FUNC1() < 0) {
		FUNC11("Unable to init generic netlink\n");
		FUNC0(1);
	}

	msg = FUNC9();
	if (!msg) {
		FUNC6(sock);
		FUNC11("Unable to allocate message\n");
		return;
	}

	FUNC2(msg, NL_AUTO_PID, NL_AUTO_SEQ, family,
		    FAST_CLASSIFIER_GENL_HDRSIZE, NLM_F_REQUEST,
		    FAST_CLASSIFIER_C_OFFLOAD, FAST_CLASSIFIER_GENL_VERSION);
	FUNC8(msg, 1, sizeof(fc_msg), &fc_msg);

	ret = FUNC5(sock, msg);

	FUNC10(msg);
	if (ret < 0) {
		FUNC11("nlmsg_free failed");
		FUNC4(sock);
		FUNC6(sock);
		return;
	}

	ret = FUNC7(sock);
	if (ret < 0) {
		FUNC11("wait for ack failed");
		FUNC4(sock);
		FUNC6(sock);
		return;
	}
}