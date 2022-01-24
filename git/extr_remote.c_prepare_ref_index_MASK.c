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
struct string_list {int dummy; } ;
struct ref {int /*<<< orphan*/  name; struct ref* next; } ;
struct TYPE_2__ {struct ref* util; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*) ; 

__attribute__((used)) static void FUNC2(struct string_list *ref_index, struct ref *ref)
{
	for ( ; ref; ref = ref->next)
		FUNC0(ref_index, ref->name)->util = ref;

	FUNC1(ref_index);
}