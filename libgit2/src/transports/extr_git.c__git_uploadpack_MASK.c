#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* current_stream; } ;
typedef  TYPE_2__ git_subtransport ;
typedef  int /*<<< orphan*/  git_smart_subtransport_stream ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(
	git_subtransport *t,
	const char *url,
	git_smart_subtransport_stream **stream)
{
	FUNC0(url);

	if (t->current_stream) {
		*stream = &t->current_stream->parent;
		return 0;
	}

	FUNC1(GIT_ERROR_NET, "must call UPLOADPACK_LS before UPLOADPACK");
	return -1;
}