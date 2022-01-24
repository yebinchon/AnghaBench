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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  git_stream ;
struct TYPE_2__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ git_socket_stream ;

/* Variables and functions */
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,size_t,int) ; 

__attribute__((used)) static ssize_t FUNC2(git_stream *stream, const char *data, size_t len, int flags)
{
	git_socket_stream *st = (git_socket_stream *) stream;
	ssize_t written;

	errno = 0;

	if ((written = FUNC1(st->s, data, len, flags)) < 0) {
		FUNC0("error sending data");
		return -1;
	}

	return written;
}