#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  free; int /*<<< orphan*/  next; } ;
typedef  TYPE_1__ git_config_iterator ;
struct TYPE_10__ {int /*<<< orphan*/  list; } ;
typedef  TYPE_2__ git_config_entries ;
struct TYPE_11__ {TYPE_1__ parent; TYPE_2__* entries; int /*<<< orphan*/  head; } ;
typedef  TYPE_3__ config_entries_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  config_iterator_free ; 
 int /*<<< orphan*/  config_iterator_next ; 
 TYPE_3__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(git_config_iterator **out, git_config_entries *entries)
{
	config_entries_iterator *it;

	it = FUNC1(1, sizeof(config_entries_iterator));
	FUNC0(it);
	it->parent.next = config_iterator_next;
	it->parent.free = config_iterator_free;
	it->head = entries->list;
	it->entries = entries;

	FUNC2(entries);
	*out = &it->parent;

	return 0;
}