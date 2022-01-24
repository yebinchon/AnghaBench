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
struct TYPE_4__ {int (* del_multivar ) (TYPE_1__*,char const*,char const*) ;} ;
typedef  TYPE_1__ git_config_backend ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  BACKEND_USE_DELETE ; 
 int GIT_ENOTFOUND ; 
 scalar_t__ FUNC0 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,char const*,char const*) ; 

int FUNC2(git_config *cfg, const char *name, const char *regexp)
{
	git_config_backend *backend;

	if (FUNC0(&backend, cfg, name, BACKEND_USE_DELETE) < 0)
		return GIT_ENOTFOUND;

	return backend->del_multivar(backend, name, regexp);
}