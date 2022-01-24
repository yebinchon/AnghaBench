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
struct hashmap {int nr; struct entry* first; } ;
struct entry {scalar_t__ line2; struct entry* previous; struct entry* next; scalar_t__ anchor; } ;

/* Variables and functions */
 scalar_t__ NON_UNIQUE ; 
 int FUNC0 (struct entry**,int,struct entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct entry**) ; 
 struct entry** FUNC2 (int) ; 

__attribute__((used)) static struct entry *FUNC3(struct hashmap *map)
{
	struct entry **sequence = FUNC2(map->nr * sizeof(struct entry *));
	int longest = 0, i;
	struct entry *entry;

	/*
	 * If not -1, this entry in sequence must never be overridden.
	 * Therefore, overriding entries before this has no effect, so
	 * do not do that either.
	 */
	int anchor_i = -1;

	for (entry = map->first; entry; entry = entry->next) {
		if (!entry->line2 || entry->line2 == NON_UNIQUE)
			continue;
		i = FUNC0(sequence, longest, entry);
		entry->previous = i < 0 ? NULL : sequence[i];
		++i;
		if (i <= anchor_i)
			continue;
		sequence[i] = entry;
		if (entry->anchor) {
			anchor_i = i;
			longest = anchor_i + 1;
		} else if (i == longest) {
			longest++;
		}
	}

	/* No common unique lines were found */
	if (!longest) {
		FUNC1(sequence);
		return NULL;
	}

	/* Iterate starting at the last element, adjusting the "next" members */
	entry = sequence[longest - 1];
	entry->next = NULL;
	while (entry->previous) {
		entry->previous->next = entry;
		entry = entry->previous;
	}
	FUNC1(sequence);
	return entry;
}