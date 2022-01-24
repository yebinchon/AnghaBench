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
struct nlmsghdr {int dummy; } ;
struct genlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENL_HDRLEN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct genlmsghdr*) ; 
 struct genlmsghdr* FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlmsghdr*,int /*<<< orphan*/ ) ; 

int FUNC4(struct nlmsghdr *nlh, int hdrlen)
{
	struct genlmsghdr *ghdr;

	if (!FUNC3(nlh, GENL_HDRLEN))
		return 0;

	ghdr = FUNC2(nlh);
	if (FUNC1(ghdr) < FUNC0(hdrlen))
		return 0;

	return 1;
}