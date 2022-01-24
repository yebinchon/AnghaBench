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
typedef  scalar_t__ u64 ;
struct sfe_ipv6_debug_xml_write_state {size_t iter_exception; int /*<<< orphan*/  state; } ;
struct sfe_ipv6 {int /*<<< orphan*/  lock; scalar_t__* exception_events64; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAR_DEV_MSG_SIZE ; 
 size_t SFE_IPV6_EXCEPTION_EVENT_LAST ; 
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 char** sfe_ipv6_exception_events_string ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct sfe_ipv6 *si, char *buffer, char *msg, size_t *length,
							 int *total_read, struct sfe_ipv6_debug_xml_write_state *ws)
{
	u64 ct;

	FUNC2(&si->lock);
	ct = si->exception_events64[ws->iter_exception];
	FUNC3(&si->lock);

	if (ct) {
		int bytes_read;

		bytes_read = FUNC1(msg, CHAR_DEV_MSG_SIZE,
				      "\t\t<exception name=\"%s\" count=\"%llu\" />\n",
				      sfe_ipv6_exception_events_string[ws->iter_exception],
				      ct);
		if (FUNC0(buffer + *total_read, msg, CHAR_DEV_MSG_SIZE)) {
			return false;
		}

		*length -= bytes_read;
		*total_read += bytes_read;
	}

	ws->iter_exception++;
	if (ws->iter_exception >= SFE_IPV6_EXCEPTION_EVENT_LAST) {
		ws->iter_exception = 0;
		ws->state++;
	}

	return true;
}