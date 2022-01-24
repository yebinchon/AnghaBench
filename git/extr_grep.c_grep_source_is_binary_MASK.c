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
struct index_state {int dummy; } ;
struct grep_source {int /*<<< orphan*/  size; int /*<<< orphan*/  buf; TYPE_1__* driver; } ;
struct TYPE_2__ {int binary; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct grep_source*) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_source*,struct index_state*) ; 

__attribute__((used)) static int FUNC3(struct grep_source *gs,
				 struct index_state *istate)
{
	FUNC2(gs, istate);
	if (gs->driver->binary != -1)
		return gs->driver->binary;

	if (!FUNC1(gs))
		return FUNC0(gs->buf, gs->size);

	return 0;
}