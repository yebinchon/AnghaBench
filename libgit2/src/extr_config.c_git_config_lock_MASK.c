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
typedef  int /*<<< orphan*/  git_transaction ;
struct TYPE_9__ {int (* lock ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ git_config_backend ;
struct TYPE_10__ {int /*<<< orphan*/  backends; } ;
typedef  TYPE_2__ git_config ;
struct TYPE_11__ {TYPE_1__* backend; } ;
typedef  TYPE_3__ backend_internal ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 

int FUNC5(git_transaction **out, git_config *cfg)
{
	int error;
	git_config_backend *backend;
	backend_internal *internal;

	FUNC0(cfg);

	internal = FUNC3(&cfg->backends, 0);
	if (!internal || !internal->backend) {
		FUNC1(GIT_ERROR_CONFIG, "cannot lock; the config has no backends");
		return -1;
	}
	backend = internal->backend;

	if ((error = backend->lock(backend)) < 0)
		return error;

	return FUNC2(out, cfg);
}