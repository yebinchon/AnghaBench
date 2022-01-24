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
struct sk_buff {int dummy; } ;
struct sfe_connection {int offload_permit; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
struct fast_classifier_tuple {scalar_t__ ethertype; int /*<<< orphan*/  proto; int /*<<< orphan*/  dport; int /*<<< orphan*/  sport; int /*<<< orphan*/  dst_saddr; int /*<<< orphan*/  src_saddr; int /*<<< orphan*/  dmac; int /*<<< orphan*/  smac; } ;
typedef  int /*<<< orphan*/  sfe_ip_addr_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t FAST_CLASSIFIER_A_TUPLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sfe_connection* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct fast_classifier_tuple* FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  offload_msgs ; 
 int /*<<< orphan*/  offload_no_match_msgs ; 
 int /*<<< orphan*/  sfe_connections_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr *na;
	struct fast_classifier_tuple *fc_msg;
	struct sfe_connection *conn;

	na = info->attrs[FAST_CLASSIFIER_A_TUPLE];
	fc_msg = FUNC3(na);

	FUNC0("want to offload: %d-%d, %pIS, %pIS, %d, %d SMAC=%pM DMAC=%pM\n",
		fc_msg->ethertype,
		fc_msg->proto,
		&fc_msg->src_saddr,
		&fc_msg->dst_saddr,
		fc_msg->sport,
		fc_msg->dport,
		fc_msg->smac,
		fc_msg->dmac);

	FUNC4(&sfe_connections_lock);
	conn = FUNC2((sfe_ip_addr_t *)&fc_msg->src_saddr,
					 (sfe_ip_addr_t *)&fc_msg->dst_saddr,
					 fc_msg->sport,
					 fc_msg->dport,
					 fc_msg->proto,
					 (fc_msg->ethertype == AF_INET));
	if (!conn) {
		FUNC5(&sfe_connections_lock);
		FUNC0("REQUEST OFFLOAD NO MATCH\n");
		FUNC1(&offload_no_match_msgs);
		return 0;
	}

	conn->offload_permit = 1;
	FUNC5(&sfe_connections_lock);
	FUNC1(&offload_msgs);

	FUNC0("INFO: calling sfe rule creation!\n");
	return 0;
}