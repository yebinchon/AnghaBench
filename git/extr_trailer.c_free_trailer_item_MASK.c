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
struct trailer_item {struct trailer_item* value; struct trailer_item* token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trailer_item*) ; 

__attribute__((used)) static void FUNC1(struct trailer_item *item)
{
	FUNC0(item->token);
	FUNC0(item->value);
	FUNC0(item);
}