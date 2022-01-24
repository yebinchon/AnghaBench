#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct arg_item* command; struct arg_item* key; struct arg_item* name; } ;
struct arg_item {struct arg_item* value; struct arg_item* token; TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arg_item*) ; 

__attribute__((used)) static void FUNC1(struct arg_item *item)
{
	FUNC0(item->conf.name);
	FUNC0(item->conf.key);
	FUNC0(item->conf.command);
	FUNC0(item->token);
	FUNC0(item->value);
	FUNC0(item);
}