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
#define  ACPI_EC_EVT_TIMING_EVENT 130 
#define  ACPI_EC_EVT_TIMING_QUERY 129 
#define  ACPI_EC_EVT_TIMING_STATUS 128 
 int ec_event_clearing ; 
 int FUNC0 (char*,char*) ; 

__attribute__((used)) static int FUNC1(char *buffer,
				    const struct kernel_param *kp)
{
	switch (ec_event_clearing) {
	case ACPI_EC_EVT_TIMING_STATUS:
		return FUNC0(buffer, "status");
	case ACPI_EC_EVT_TIMING_QUERY:
		return FUNC0(buffer, "query");
	case ACPI_EC_EVT_TIMING_EVENT:
		return FUNC0(buffer, "event");
	default:
		return FUNC0(buffer, "invalid");
	}
	return 0;
}