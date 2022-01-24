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
struct kernel_param {int dummy; } ;

/* Variables and functions */
#define  IPMI_SEND_PANIC_EVENT 130 
#define  IPMI_SEND_PANIC_EVENT_NONE 129 
#define  IPMI_SEND_PANIC_EVENT_STRING 128 
 int ipmi_send_panic_event ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(char *buffer, const struct kernel_param *kp)
{
	switch (ipmi_send_panic_event) {
	case IPMI_SEND_PANIC_EVENT_NONE:
		FUNC0(buffer, "none");
		break;

	case IPMI_SEND_PANIC_EVENT:
		FUNC0(buffer, "event");
		break;

	case IPMI_SEND_PANIC_EVENT_STRING:
		FUNC0(buffer, "string");
		break;

	default:
		FUNC0(buffer, "???");
		break;
	}

	return FUNC1(buffer);
}