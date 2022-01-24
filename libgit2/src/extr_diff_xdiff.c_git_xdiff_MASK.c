#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
struct TYPE_9__ {int error; } ;
struct TYPE_15__ {TYPE_3__* priv; } ;
struct TYPE_14__ {int /*<<< orphan*/  flags; int /*<<< orphan*/ * find_func; int /*<<< orphan*/ * find_func_priv; } ;
struct TYPE_10__ {TYPE_1__ output; TYPE_7__ callback; TYPE_6__ config; int /*<<< orphan*/  params; } ;
typedef  TYPE_2__ git_xdiff_output ;
struct TYPE_13__ {scalar_t__ size; int /*<<< orphan*/  ptr; } ;
struct TYPE_12__ {scalar_t__ size; int /*<<< orphan*/  ptr; } ;
struct TYPE_11__ {TYPE_5__ xd_new_data; TYPE_4__ xd_old_data; TYPE_2__* xo; int /*<<< orphan*/ * patch; } ;
typedef  TYPE_3__ git_xdiff_info ;
typedef  int /*<<< orphan*/  git_patch_generated_output ;
typedef  int /*<<< orphan*/  git_patch_generated ;
typedef  int /*<<< orphan*/  git_diff_find_context_payload ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 scalar_t__ GIT_XDIFF_MAX_SIZE ; 
 int /*<<< orphan*/  XDL_EMIT_FUNCNAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *,TYPE_6__*,TYPE_7__*) ; 

__attribute__((used)) static int FUNC8(git_patch_generated_output *output, git_patch_generated *patch)
{
	git_xdiff_output *xo = (git_xdiff_output *)output;
	git_xdiff_info info;
	git_diff_find_context_payload findctxt;

	FUNC6(&info, 0, sizeof(info));
	info.patch = patch;
	info.xo    = xo;

	xo->callback.priv = &info;

	FUNC1(
		&xo->config.find_func, &findctxt, FUNC3(patch));
	xo->config.find_func_priv = &findctxt;

	if (xo->config.find_func != NULL)
		xo->config.flags |= XDL_EMIT_FUNCNAMES;
	else
		xo->config.flags &= ~XDL_EMIT_FUNCNAMES;

	/* TODO: check ofile.opts_flags to see if driver-specific per-file
	 * updates are needed to xo->params.flags
	 */

	FUNC5(&info.xd_old_data.ptr, &info.xd_old_data.size, patch);
	FUNC4(&info.xd_new_data.ptr, &info.xd_new_data.size, patch);

	if (info.xd_old_data.size > GIT_XDIFF_MAX_SIZE ||
		info.xd_new_data.size > GIT_XDIFF_MAX_SIZE) {
		FUNC2(GIT_ERROR_INVALID, "files too large for diff");
		return -1;
	}

	FUNC7(&info.xd_old_data, &info.xd_new_data,
		&xo->params, &xo->config, &xo->callback);

	FUNC0(&findctxt);

	return xo->output.error;
}