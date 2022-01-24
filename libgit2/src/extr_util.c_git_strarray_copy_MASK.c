#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t count; int /*<<< orphan*/ * strings; } ;
typedef  TYPE_1__ git_strarray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC6(git_strarray *tgt, const git_strarray *src)
{
	size_t i;

	FUNC1(tgt && src);

	FUNC5(tgt, 0, sizeof(*tgt));

	if (!src->count)
		return 0;

	tgt->strings = FUNC2(src->count, sizeof(char *));
	FUNC0(tgt->strings);

	for (i = 0; i < src->count; ++i) {
		if (!src->strings[i])
			continue;

		tgt->strings[tgt->count] = FUNC3(src->strings[i]);
		if (!tgt->strings[tgt->count]) {
			FUNC4(tgt);
			FUNC5(tgt, 0, sizeof(*tgt));
			return -1;
		}

		tgt->count++;
	}

	return 0;
}