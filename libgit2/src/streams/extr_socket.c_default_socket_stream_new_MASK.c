#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_stream ;
struct TYPE_5__ {int /*<<< orphan*/  free; int /*<<< orphan*/  close; int /*<<< orphan*/  read; int /*<<< orphan*/  write; int /*<<< orphan*/  connect; int /*<<< orphan*/  version; } ;
struct TYPE_6__ {int /*<<< orphan*/  s; TYPE_1__ parent; struct TYPE_6__* port; struct TYPE_6__* host; } ;
typedef  TYPE_2__ git_socket_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  GIT_STREAM_VERSION ; 
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int,int) ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  socket_close ; 
 int /*<<< orphan*/  socket_connect ; 
 int /*<<< orphan*/  socket_free ; 
 int /*<<< orphan*/  socket_read ; 
 int /*<<< orphan*/  socket_write ; 

__attribute__((used)) static int FUNC4(
	git_stream **out,
	const char *host,
	const char *port)
{
	git_socket_stream *st;

	FUNC1(out && host && port);

	st = FUNC2(1, sizeof(git_socket_stream));
	FUNC0(st);

	st->host = FUNC3(host);
	FUNC0(st->host);

	if (port) {
		st->port = FUNC3(port);
		FUNC0(st->port);
	}

	st->parent.version = GIT_STREAM_VERSION;
	st->parent.connect = socket_connect;
	st->parent.write = socket_write;
	st->parent.read = socket_read;
	st->parent.close = socket_close;
	st->parent.free = socket_free;
	st->s = INVALID_SOCKET;

	*out = (git_stream *) st;
	return 0;
}