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

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 unsigned char IPPROTO_TCP ; 
 unsigned char IPPROTO_UDP ; 
 unsigned short FUNC0 (unsigned short) ; 
 int FUNC1 (int,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 unsigned short FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(int argc, char *argv[], unsigned char *proto, unsigned long *src_saddr,
			    unsigned long *dst_saddr, unsigned short *sport, unsigned short *dport, int *af)
{
	int ret;
	unsigned short port;

	if (argc < 7) {
		FUNC2("help: nl_classifier <v4|v6> <udp|tcp> <source ip> <destination ip> <source port> <destination port>\n");
		return -1;
	}

	if (0 == FUNC3(argv[1], "v4", 2)) {
		*af = AF_INET;
	} else if (0 == FUNC3(argv[1], "v6", 2)) {
		*af = AF_INET6;
	} else {
		FUNC2("Address family is not supported");
		return -1;
	}

	if (0 == FUNC3(argv[2], "udp", 3)) {
		*proto = IPPROTO_UDP;
	} else if (0 == FUNC3(argv[2], "tcp", 3)) {
		*proto = IPPROTO_TCP;
	} else {
		FUNC2("Protocol is not supported");
		return -1;
	}

	ret = FUNC1(*af, argv[3], src_saddr);
	if (ret <= 0) {
		FUNC2("source ip has wrong format\n");
		return -1;
	}

	ret = FUNC1(*af, argv[4], dst_saddr);
	if (ret <= 0) {
		FUNC2("destination ip has wrong format\n");
		return -1;
	}

	port = FUNC4(argv[5], NULL, 0);
	*sport = FUNC0(port);
	port = FUNC4(argv[6], NULL, 0);
	*dport = FUNC0(port);

	FUNC2("nl classifier parse arguments successful\n");
	return 0;
}