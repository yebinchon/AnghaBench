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
typedef  int /*<<< orphan*/  v6str ;
struct in_addr {int /*<<< orphan*/  s6_addr; int /*<<< orphan*/  s_addr; } ;
struct in6_addr {int /*<<< orphan*/  s6_addr; int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int INET6_PREFIXSTRLEN ; 
 int INET_PREFIXSTRLEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct in_addr*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct in_addr*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

int FUNC6(int argc, const char **argv)
{
	char v6str[INET6_PREFIXSTRLEN], v4str[INET_PREFIXSTRLEN];
	struct in6_addr v6;
	struct in_addr v4;
	unsigned long v6it, v4it, mask;
	unsigned char *byte4, *byte6;
	unsigned char bit4, bit6;

	/* Check parameters. */
	if (argc != 3)
		FUNC3();

	/* Parse the v6 address. */
	FUNC5(v6str, argv[1], INET6_PREFIXSTRLEN);
	v6str[INET6_PREFIXSTRLEN-1] = '\0';
	FUNC1(AF_INET6, v6str, &v6, &v6it);

	/* Parse the v4 address */
	FUNC5(v4str, argv[2], INET_PREFIXSTRLEN);
	v6str[INET_PREFIXSTRLEN-1] = '\0';
	FUNC1(AF_INET, v4str, &v4, &v4it);

	/* Check if the combined mask is within bounds. */
	mask = (32 - v4it) + v6it;
	if (mask > 128)
		FUNC3();

	/* Combine the addresses. */
	while (v4it < 32) {
		byte6 = (unsigned char *)(&v6.s6_addr) + (v6it >> 3);
		byte4 = (unsigned char *)(&v4.s_addr)  + (v4it >> 3);
		bit6 = 128 >> (v6it & 0x07);
		bit4 = 128 >> (v4it & 0x07);

		if (*byte4 & bit4)
			*byte6 |= bit6;
		else
			*byte6 &= ~bit6;

		v4it++; v6it++;
	}

	/* Clear remaining bits. */
	while (v6it < 128) {
		byte6 = (unsigned char *)(&v6.s6_addr) + (v6it >> 3);
		bit6 = 128 >> (v6it & 0x07);

		*byte6 &= ~bit6;

		v6it++;
	}

	/* Print the subnet prefix. */
	if (FUNC0(AF_INET6, &v6, v6str, sizeof(v6str)) == NULL)
		FUNC2();
	FUNC4("%s/%lu\n", v6str, mask);
	return 0;
}