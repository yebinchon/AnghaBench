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
struct seq_table {unsigned long seqid; struct ipmi_recv_msg* recv_msg; scalar_t__ inuse; } ;
struct ipmi_smi {int /*<<< orphan*/  seq_lock; struct seq_table* seq_table; } ;
struct ipmi_recv_msg {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (long,unsigned char,unsigned long) ; 
 int /*<<< orphan*/  IPMI_WATCH_MASK_CHECK_MESSAGES ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_smi*,struct ipmi_recv_msg*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipmi_smi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ipmi_smi *intf,
			long         msgid,
			unsigned int err)
{
	int                  rv = -ENODEV;
	unsigned long        flags;
	unsigned char        seq;
	unsigned long        seqid;
	struct ipmi_recv_msg *msg = NULL;


	FUNC0(msgid, seq, seqid);

	FUNC3(&intf->seq_lock, flags);
	/*
	 * We do this verification because the user can be deleted
	 * while a message is outstanding.
	 */
	if ((intf->seq_table[seq].inuse)
				&& (intf->seq_table[seq].seqid == seqid)) {
		struct seq_table *ent = &intf->seq_table[seq];

		ent->inuse = 0;
		FUNC2(intf, IPMI_WATCH_MASK_CHECK_MESSAGES);
		msg = ent->recv_msg;
		rv = 0;
	}
	FUNC4(&intf->seq_lock, flags);

	if (msg)
		FUNC1(intf, msg, err);

	return rv;
}