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
struct bitmap_test_data {int /*<<< orphan*/  seen; int /*<<< orphan*/  prg; int /*<<< orphan*/  base; int /*<<< orphan*/  bitmap_git; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct object *object, const char *name,
			     void *data)
{
	struct bitmap_test_data *tdata = data;
	int bitmap_pos;

	bitmap_pos = FUNC0(tdata->bitmap_git, &object->oid);
	if (bitmap_pos < 0)
		FUNC2("Object not in bitmap: %s\n", FUNC4(&object->oid));

	FUNC1(tdata->base, bitmap_pos);
	FUNC3(tdata->prg, ++tdata->seen);
}