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
struct grep_source {int /*<<< orphan*/  identifier; int /*<<< orphan*/  name; int /*<<< orphan*/  buf; int /*<<< orphan*/  size; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct grep_source *gs)
{
	enum object_type type;

	FUNC2();
	gs->buf = FUNC5(gs->identifier, &type, &gs->size);
	FUNC3();

	if (!gs->buf)
		return FUNC1(FUNC0("'%s': unable to read %s"),
			     gs->name,
			     FUNC4(gs->identifier));
	return 0;
}