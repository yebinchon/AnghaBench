#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_smart_subtransport_stream ;
struct TYPE_3__ {int /*<<< orphan*/  io; int /*<<< orphan*/  sent_command; } ;
typedef  TYPE_1__ git_proto_stream ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(
	git_smart_subtransport_stream *stream,
	const char *buffer,
	size_t len)
{
	git_proto_stream *s = (git_proto_stream *)stream;
	int error;

	if (!s->sent_command && (error = FUNC1(s)) < 0)
		return error;

	return FUNC0(s->io, buffer, len, 0);
}