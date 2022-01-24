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
struct possible_tag {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct possible_tag*) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct possible_tag*) ; 
 struct possible_tag* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct possible_tag*,struct possible_tag*,int) ; 

__attribute__((used)) static int FUNC5(struct possible_tag **out, struct possible_tag *in)
{
	struct possible_tag *tag;
	int error;

	tag = FUNC3(sizeof(struct possible_tag));
	FUNC0(tag);

	FUNC4(tag, in, sizeof(struct possible_tag));
	tag->name = NULL;

	if ((error = FUNC1(&tag->name, in->name)) < 0) {
		FUNC2(tag);
		*out = NULL;
		return error;
	}

	*out = tag;
	return 0;
}