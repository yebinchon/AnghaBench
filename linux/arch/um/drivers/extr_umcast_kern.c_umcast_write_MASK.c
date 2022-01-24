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
struct uml_net_private {int /*<<< orphan*/  user; } ;
struct umcast_data {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umcast_data*) ; 

__attribute__((used)) static int FUNC1(int fd, struct sk_buff *skb, struct uml_net_private *lp)
{
	return FUNC0(fd, skb->data, skb->len,
				(struct umcast_data *) &lp->user);
}