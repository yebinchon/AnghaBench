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
typedef  int u8 ;
struct ipmi_smi_powernv {int /*<<< orphan*/  intf; } ;
struct ipmi_smi_msg {int* rsp; int* data; int rsp_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ipmi_smi_msg*) ; 

__attribute__((used)) static void FUNC1(struct ipmi_smi_powernv *smi,
		struct ipmi_smi_msg *msg, u8 completion_code)
{
	msg->rsp[0] = msg->data[0] | 0x4;
	msg->rsp[1] = msg->data[1];
	msg->rsp[2] = completion_code;
	msg->rsp_size = 3;
	FUNC0(smi->intf, msg);
}