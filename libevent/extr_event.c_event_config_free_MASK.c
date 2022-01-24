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
struct event_config_entry {int dummy; } ;
struct event_config {int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 struct event_config_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct event_config_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event_config_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct event_config*) ; 
 int /*<<< orphan*/  next ; 

void
FUNC4(struct event_config *cfg)
{
	struct event_config_entry *entry;

	while ((entry = FUNC0(&cfg->entries)) != NULL) {
		FUNC1(&cfg->entries, entry, next);
		FUNC2(entry);
	}
	FUNC3(cfg);
}