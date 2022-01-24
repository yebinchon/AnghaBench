#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void const* str; } ;
struct TYPE_4__ {void const** str; } ;
struct property_entry {scalar_t__ type; int length; void const* name; TYPE_1__ value; TYPE_2__ pointer; scalar_t__ is_array; } ;

/* Variables and functions */
 scalar_t__ DEV_PROP_STRING ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 void* FUNC1 (struct property_entry const*) ; 

__attribute__((used)) static void FUNC2(const struct property_entry *p)
{
	const void *pointer = FUNC1(p);
	size_t i, nval;

	if (p->is_array) {
		if (p->type == DEV_PROP_STRING && p->pointer.str) {
			nval = p->length / sizeof(const char *);
			for (i = 0; i < nval; i++)
				FUNC0(p->pointer.str[i]);
		}
		FUNC0(pointer);
	} else if (p->type == DEV_PROP_STRING) {
		FUNC0(p->value.str);
	}
	FUNC0(p->name);
}