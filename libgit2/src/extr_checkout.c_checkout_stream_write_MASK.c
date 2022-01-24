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
struct checkout_stream {int /*<<< orphan*/  path; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  git_writestream ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static int FUNC2(
	git_writestream *s, const char *buffer, size_t len)
{
	struct checkout_stream *stream = (struct checkout_stream *)s;
	int ret;

	if ((ret = FUNC1(stream->fd, buffer, len)) < 0)
		FUNC0(GIT_ERROR_OS, "could not write to '%s'", stream->path);

	return ret;
}