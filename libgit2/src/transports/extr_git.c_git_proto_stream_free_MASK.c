#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * current_stream; } ;
typedef  TYPE_1__ git_subtransport ;
typedef  int /*<<< orphan*/  git_smart_subtransport_stream ;
struct TYPE_7__ {struct TYPE_7__* url; int /*<<< orphan*/  io; } ;
typedef  TYPE_2__ git_proto_stream ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(git_smart_subtransport_stream *stream)
{
	git_proto_stream *s;
	git_subtransport *t;

	if (!stream)
		return;

	s = (git_proto_stream *)stream;
	t = FUNC0(s);

	t->current_stream = NULL;

	FUNC2(s->io);
	FUNC3(s->io);
	FUNC1(s->url);
	FUNC1(s);
}