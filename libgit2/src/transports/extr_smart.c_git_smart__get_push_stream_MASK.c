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
struct TYPE_6__ {scalar_t__ direction; int /*<<< orphan*/  buffer_data; int /*<<< orphan*/  buffer; int /*<<< orphan*/ * current_stream; scalar_t__ rpc; int /*<<< orphan*/  url; TYPE_2__* wrapped; } ;
typedef  TYPE_1__ transport_smart ;
typedef  int /*<<< orphan*/  git_smart_subtransport_stream ;
struct TYPE_7__ {int (* action ) (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ GIT_DIRECTION_PUSH ; 
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int /*<<< orphan*/  GIT_SERVICE_RECEIVEPACK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  git_smart__recv_cb ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(transport_smart *t, git_smart_subtransport_stream **stream)
{
	int error;

	if (t->rpc && FUNC2(t, false) < 0)
		return -1;

	if (GIT_DIRECTION_PUSH != t->direction) {
		FUNC1(GIT_ERROR_NET, "this operation is only valid for push");
		return -1;
	}

	if ((error = t->wrapped->action(stream, t->wrapped, t->url, GIT_SERVICE_RECEIVEPACK)) < 0)
		return error;

	/* If this is a stateful implementation, the stream we get back should be the same */
	FUNC0(t->rpc || t->current_stream == *stream);

	/* Save off the current stream (i.e. socket) that we are working with */
	t->current_stream = *stream;

	FUNC3(&t->buffer, t->buffer_data, sizeof(t->buffer_data), git_smart__recv_cb, t);

	return 0;
}