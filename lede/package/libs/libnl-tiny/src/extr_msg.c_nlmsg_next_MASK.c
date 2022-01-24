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
struct nlmsghdr {int /*<<< orphan*/  nlmsg_len; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

struct nlmsghdr *FUNC1(struct nlmsghdr *nlh, int *remaining)
{
	int totlen = FUNC0(nlh->nlmsg_len);

	*remaining -= totlen;

	return (struct nlmsghdr *) ((unsigned char *) nlh + totlen);
}