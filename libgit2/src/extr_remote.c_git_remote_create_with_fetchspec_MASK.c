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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_4__ {char const* name; char const* fetchspec; int /*<<< orphan*/  flags; int /*<<< orphan*/ * repository; } ;
typedef  TYPE_1__ git_remote_create_options ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 TYPE_1__ GIT_REMOTE_CREATE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ **,char const*,TYPE_1__*) ; 

int FUNC2(git_remote **out, git_repository *repo, const char *name, const char *url, const char *fetch)
{
	int error;
	git_remote_create_options opts = GIT_REMOTE_CREATE_OPTIONS_INIT;

	if ((error = FUNC0(name)) < 0)
		return error;

	opts.repository = repo;
	opts.name = name;
	opts.fetchspec = fetch;
	opts.flags = GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC;

	return FUNC1(out, url, &opts);
}