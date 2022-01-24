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
struct ref_format {int dummy; } ;
struct ref_array_item {int /*<<< orphan*/  kind; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_array_item*) ; 
 struct ref_array_item* FUNC1 (char const*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ref_array_item*,struct ref_format const*) ; 

void FUNC4(const char *name, const struct object_id *oid,
		      const struct ref_format *format)
{
	struct ref_array_item *ref_item;
	ref_item = FUNC1(name, oid);
	ref_item->kind = FUNC2(name);
	FUNC3(ref_item, format);
	FUNC0(ref_item);
}