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
typedef  int /*<<< orphan*/  git_vector_cmp ;
typedef  int /*<<< orphan*/  git_vector ;

/* Variables and functions */
 int FUNC0 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,size_t,int) ; 

int FUNC1(
	size_t *out, git_vector *entries, git_vector_cmp entry_srch,
	const char *path, size_t path_len, int stage)
{
	return FUNC0(out, entries, entry_srch, path, path_len, stage);
}