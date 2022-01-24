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
struct rtas_error_log {int dummy; } ;
struct pseries_errorlog {scalar_t__ data; } ;
struct epow_errorlog {int sensor_value; int event_modifier; } ;

/* Variables and functions */
#define  EPOW_MAIN_ENCLOSURE 134 
#define  EPOW_POWER_OFF 133 
#define  EPOW_RESET 132 
#define  EPOW_SYSTEM_HALT 131 
#define  EPOW_SYSTEM_SHUTDOWN 130 
#define  EPOW_WARN_COOLING 129 
#define  EPOW_WARN_POWER 128 
 int /*<<< orphan*/  PSERIES_ELOG_SECT_ID_EPOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct pseries_errorlog* FUNC1 (struct rtas_error_log*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ num_epow_events ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct rtas_error_log *log)
{
	struct pseries_errorlog *pseries_log;
	struct epow_errorlog *epow_log;
	char action_code;
	char modifier;

	pseries_log = FUNC1(log, PSERIES_ELOG_SECT_ID_EPOW);
	if (pseries_log == NULL)
		return;

	epow_log = (struct epow_errorlog *)pseries_log->data;
	action_code = epow_log->sensor_value & 0xF;	/* bottom 4 bits */
	modifier = epow_log->event_modifier & 0xF;	/* bottom 4 bits */

	switch (action_code) {
	case EPOW_RESET:
		if (num_epow_events) {
			FUNC7("Non critical power/cooling issue cleared\n");
			num_epow_events--;
		}
		break;

	case EPOW_WARN_COOLING:
		FUNC7("Non-critical cooling issue detected. Check RTAS error"
			" log for details\n");
		break;

	case EPOW_WARN_POWER:
		FUNC7("Non-critical power issue detected. Check RTAS error"
			" log for details\n");
		break;

	case EPOW_SYSTEM_SHUTDOWN:
		FUNC2(epow_log->event_modifier);
		break;

	case EPOW_SYSTEM_HALT:
		FUNC5("Critical power/cooling issue detected. Check RTAS"
			 " error log for details. Powering off.\n");
		FUNC4(true);
		break;

	case EPOW_MAIN_ENCLOSURE:
	case EPOW_POWER_OFF:
		FUNC5("System about to lose power. Check RTAS error log "
			 " for details. Powering off immediately.\n");
		FUNC0();
		FUNC3();
		break;

	default:
		FUNC6("Unknown power/cooling event (action code  = %d)\n",
			action_code);
	}

	/* Increment epow events counter variable */
	if (action_code != EPOW_RESET)
		num_epow_events++;
}