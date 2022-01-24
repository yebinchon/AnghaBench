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
struct strbuf {int dummy; } ;
struct ref_array_item {struct atom_value* value; } ;
struct atom_value {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atom_value*) ; 
 scalar_t__ FUNC1 (struct ref_array_item*,struct strbuf*) ; 

__attribute__((used)) static int FUNC2(struct ref_array_item *ref, int atom,
			      struct atom_value **v, struct strbuf *err)
{
	if (!ref->value) {
		if (FUNC1(ref, err))
			return -1;
		FUNC0(ref->value);
	}
	*v = &ref->value[atom];
	return 0;
}