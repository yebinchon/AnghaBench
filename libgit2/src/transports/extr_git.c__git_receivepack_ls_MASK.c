#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* current_stream; } ;
typedef  TYPE_1__ git_subtransport ;
typedef  int /*<<< orphan*/  git_smart_subtransport_stream ;
struct TYPE_10__ {int /*<<< orphan*/  io; } ;
typedef  TYPE_2__ git_proto_stream ;
struct TYPE_11__ {int /*<<< orphan*/  port; int /*<<< orphan*/  host; } ;
typedef  TYPE_3__ git_net_url ;

/* Variables and functions */
 TYPE_3__ GIT_NET_URL_INIT ; 
 int /*<<< orphan*/  cmd_receivepack ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*,char const*) ; 
 int FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prefix_git ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
	git_subtransport *t,
	const char *url,
	git_smart_subtransport_stream **stream)
{
	git_net_url urldata = GIT_NET_URL_INIT;
	const char *stream_url = url;
	git_proto_stream *s;
	int error;

	*stream = NULL;
	if (!FUNC0(url, prefix_git))
		stream_url += FUNC6(prefix_git);

	if ((error = FUNC2(&urldata, url)) < 0)
		return error;

	error = FUNC3(t, stream_url, cmd_receivepack, urldata.host, urldata.port, stream);

	FUNC1(&urldata);

	if (error < 0) {
		FUNC4(*stream);
		return error;
	}

	s = (git_proto_stream *) *stream;

	if ((error = FUNC5(s->io)) < 0)
		return error;

	t->current_stream = s;

	return 0;
}