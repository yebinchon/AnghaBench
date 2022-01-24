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
struct event_config_entry {int /*<<< orphan*/ * avoid_method; } ;
struct event_config {int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct event_config_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_config_entry*) ; 
 struct event_config_entry* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  next ; 

int
FUNC4(struct event_config *cfg, const char *method)
{
	struct event_config_entry *entry = FUNC2(sizeof(*entry));
	if (entry == NULL)
		return (-1);

	if ((entry->avoid_method = FUNC3(method)) == NULL) {
		FUNC1(entry);
		return (-1);
	}

	FUNC0(&cfg->entries, entry, next);

	return (0);
}