#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo ;
struct TYPE_13__ {int /*<<< orphan*/  patch; } ;
typedef  TYPE_1__ patch_generated_with_delta ;
struct TYPE_14__ {int /*<<< orphan*/  output; } ;
typedef  TYPE_2__ git_xdiff_output ;
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_15__ {int /*<<< orphan*/  as_path; } ;
typedef  TYPE_3__ git_diff_file_content_src ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_1__*,TYPE_2__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/  const*) ; 
 int FUNC6 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(
	git_patch **out,
	git_diff_file_content_src *oldsrc,
	git_diff_file_content_src *newsrc,
	const git_diff_options *opts)
{
	int error = 0;
	patch_generated_with_delta *pd;
	git_xdiff_output xo;

	FUNC0(out);
	*out = NULL;

	if ((error = FUNC6(
			&pd, &oldsrc->as_path, &newsrc->as_path)) < 0)
		return error;

	FUNC4(&xo, 0, sizeof(xo));
	FUNC1(&xo.output, &pd->patch);
	FUNC3(&xo, opts);

	if (!(error = FUNC5(pd, &xo, oldsrc, newsrc, opts)))
		*out = (git_patch *)pd;
	else
		FUNC2((git_patch *)pd);

	return error;
}