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
struct TYPE_4__ {void* str; } ;
struct TYPE_3__ {void* str; } ;
struct property_entry {scalar_t__ type; void* name; scalar_t__ is_array; int /*<<< orphan*/  length; TYPE_2__ value; TYPE_1__ pointer; } ;

/* Variables and functions */
 scalar_t__ DEV_PROP_STRING ; 
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct property_entry*,struct property_entry const*) ; 
 int /*<<< orphan*/  FUNC3 (struct property_entry*) ; 
 void* FUNC4 (struct property_entry const*) ; 
 int /*<<< orphan*/  FUNC5 (struct property_entry*,void const*) ; 

__attribute__((used)) static int FUNC6(struct property_entry *dst,
				    const struct property_entry *src)
{
	const void *pointer = FUNC4(src);
	const void *new;
	int error;

	if (src->is_array) {
		if (!src->length)
			return -ENODATA;

		if (src->type == DEV_PROP_STRING) {
			error = FUNC2(dst, src);
			if (error)
				return error;
			new = dst->pointer.str;
		} else {
			new = FUNC0(pointer, src->length, GFP_KERNEL);
			if (!new)
				return -ENOMEM;
		}
	} else if (src->type == DEV_PROP_STRING) {
		new = FUNC1(src->value.str, GFP_KERNEL);
		if (!new && src->value.str)
			return -ENOMEM;
	} else {
		new = pointer;
	}

	dst->length = src->length;
	dst->is_array = src->is_array;
	dst->type = src->type;

	FUNC5(dst, new);

	dst->name = FUNC1(src->name, GFP_KERNEL);
	if (!dst->name)
		goto out_free_data;

	return 0;

out_free_data:
	FUNC3(dst);
	return -ENOMEM;
}