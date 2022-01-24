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
struct timer_list {int dummy; } ;
struct ssif_info {int req_flags; scalar_t__ watch_timeout; int /*<<< orphan*/  watch_timer; scalar_t__ stopping; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ssif_info*) ; 
 struct ssif_info* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 unsigned long* FUNC2 (struct ssif_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssif_info*,unsigned long*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct ssif_info* ssif_info ; 
 int /*<<< orphan*/  FUNC5 (struct ssif_info*,unsigned long*) ; 
 int /*<<< orphan*/  watch_timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct ssif_info *ssif_info = FUNC1(ssif_info, t, watch_timer);
	unsigned long oflags, *flags;

	if (ssif_info->stopping)
		return;

	flags = FUNC2(ssif_info, &oflags);
	if (ssif_info->watch_timeout) {
		FUNC4(&ssif_info->watch_timer,
			  jiffies + ssif_info->watch_timeout);
		if (FUNC0(ssif_info)) {
			FUNC5(ssif_info, flags); /* Releases lock */
			return;
		}
		ssif_info->req_flags = true;
	}
	FUNC3(ssif_info, flags);
}