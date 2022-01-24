#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* param; int /*<<< orphan*/  fn; } ;
typedef  TYPE_1__ transport_definition ;
typedef  int /*<<< orphan*/  git_transport_cb ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 TYPE_1__ local_transport_definition ; 
 scalar_t__ FUNC2 (char const*,char) ; 
 TYPE_1__* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(
	git_transport_cb *out,
	const char *url,
	void **param)
{
	transport_definition *definition = FUNC3(url);

#ifdef GIT_WIN32
	/* On Windows, it might not be possible to discern between absolute local
	 * and ssh paths - first check if this is a valid local path that points
	 * to a directory and if so assume local path, else assume SSH */

	/* Check to see if the path points to a file on the local file system */
	if (!definition && git_path_exists(url) && git_path_isdir(url))
		definition = &local_transport_definition;
#endif

	/* For other systems, perform the SSH check first, to avoid going to the
	 * filesystem if it is not necessary */

	/* It could be a SSH remote path. Check to see if there's a : */
	if (!definition && FUNC2(url, ':')) {
		/* re-search transports again with ssh:// as url
		 * so that we can find a third party ssh transport */
		definition = FUNC3("ssh://");
	}

#ifndef GIT_WIN32
	/* Check to see if the path points to a file on the local file system */
	if (!definition && FUNC0(url) && FUNC1(url))
		definition = &local_transport_definition;
#endif

	if (!definition)
		return GIT_ENOTFOUND;

	*out = definition->fn;
	*param = definition->param;

	return 0;
}