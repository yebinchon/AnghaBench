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
struct kernel_ipmi_msg {int dummy; } ;
struct ipmi_user {int /*<<< orphan*/  intf; } ;
struct ipmi_recv_msg {int dummy; } ;
struct ipmi_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct ipmi_user* FUNC0 (struct ipmi_user*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ipmi_addr*,unsigned char*,unsigned char*) ; 
 int FUNC2 (struct ipmi_user*,int /*<<< orphan*/ ,struct ipmi_addr*,long,struct kernel_ipmi_msg*,void*,void*,struct ipmi_recv_msg*,int,unsigned char,unsigned char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipmi_user*,int) ; 

int FUNC4(struct ipmi_user     *user,
			     struct ipmi_addr     *addr,
			     long                 msgid,
			     struct kernel_ipmi_msg *msg,
			     void                 *user_msg_data,
			     void                 *supplied_smi,
			     struct ipmi_recv_msg *supplied_recv,
			     int                  priority)
{
	unsigned char saddr = 0, lun = 0;
	int rv, index;

	if (!user)
		return -EINVAL;

	user = FUNC0(user, &index);
	if (!user)
		return -ENODEV;

	rv = FUNC1(user->intf, addr, &saddr, &lun);
	if (!rv)
		rv = FUNC2(user,
				    user->intf,
				    addr,
				    msgid,
				    msg,
				    user_msg_data,
				    supplied_smi,
				    supplied_recv,
				    priority,
				    saddr,
				    lun,
				    -1, 0);

	FUNC3(user, index);
	return rv;
}