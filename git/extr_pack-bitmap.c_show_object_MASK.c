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
struct object {int /*<<< orphan*/  oid; } ;
struct bitmap_show_data {int /*<<< orphan*/  base; int /*<<< orphan*/  bitmap_git; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct object*,char const*) ; 

__attribute__((used)) static void FUNC3(struct object *object, const char *name, void *data_)
{
	struct bitmap_show_data *data = data_;
	int bitmap_pos;

	bitmap_pos = FUNC0(data->bitmap_git, &object->oid);

	if (bitmap_pos < 0)
		bitmap_pos = FUNC2(data->bitmap_git, object,
						  name);

	FUNC1(data->base, bitmap_pos);
}