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
struct event_config {int dummy; } ;
struct event_base {int dummy; } ;

/* Variables and functions */
 struct event_base* FUNC0 (struct event_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct event_config*) ; 
 struct event_config* FUNC2 () ; 

struct event_base *
FUNC3(void)
{
	struct event_base *base = NULL;
	struct event_config *cfg = FUNC2();
	if (cfg) {
		base = FUNC0(cfg);
		FUNC1(cfg);
	}
	return base;
}