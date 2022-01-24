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

/* Variables and functions */
#define  EVENT_LOG_DEBUG 131 
#define  EVENT_LOG_ERR 130 
#define  EVENT_LOG_MSG 129 
#define  EVENT_LOG_WARN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(int severity, const char *msg)
{
	if (&log_fn)
		FUNC1(severity, msg);
	else {
		const char *severity_str;
		switch (severity) {
		case EVENT_LOG_DEBUG:
			severity_str = "debug";
			break;
		case EVENT_LOG_MSG:
			severity_str = "msg";
			break;
		case EVENT_LOG_WARN:
			severity_str = "warn";
			break;
		case EVENT_LOG_ERR:
			severity_str = "err";
			break;
		default:
			severity_str = "???";
			break;
		}
		(void)FUNC0(stderr, "[%s] %s\n", severity_str, msg);
	}
}