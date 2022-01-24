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
struct nl_classifier_instance {int /*<<< orphan*/  sock; int /*<<< orphan*/  stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nl_classifier_instance*) ; 
 int FUNC1 (struct nl_classifier_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_classifier_instance*,unsigned char,unsigned long*,unsigned long*,unsigned short,unsigned short,int) ; 
 int FUNC3 (int,char**,unsigned char*,unsigned long*,unsigned long*,unsigned short*,unsigned short*,int*) ; 
 struct nl_classifier_instance nl_cls_inst ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(int argc, char *argv[])
{
	struct nl_classifier_instance *inst = &nl_cls_inst;
	unsigned char proto;
	unsigned long src_addr[4];
	unsigned long dst_addr[4];
	unsigned short sport;
	unsigned short dport;
	int af;
	int ret;

	ret = FUNC3(argc, argv, &proto, src_addr, dst_addr, &sport, &dport, &af);
	if (ret < 0) {
		FUNC5("Failed to parse arguments\n");
		return ret;
	}

	ret = FUNC1(inst);
	if (ret < 0) {
		FUNC5("Unable to init generic netlink\n");
		return ret;
	}

	FUNC2(inst, proto, src_addr, dst_addr, sport, dport, af);

	/* main loop to listen on message */
	while (!inst->stop) {
		FUNC4(inst->sock);
	}

	FUNC0(inst);

	return 0;
}