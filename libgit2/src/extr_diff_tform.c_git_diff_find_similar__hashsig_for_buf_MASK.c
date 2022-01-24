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
typedef  int /*<<< orphan*/  git_hashsig_option_t ;
typedef  int /*<<< orphan*/  git_hashsig ;
typedef  int /*<<< orphan*/  git_diff_file ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ **,char const*,size_t,int /*<<< orphan*/ ) ; 

int FUNC2(
	void **out, const git_diff_file *f, const char *buf, size_t len, void *p)
{
	git_hashsig_option_t opt = (git_hashsig_option_t)(intptr_t)p;

	FUNC0(f);
	return FUNC1((git_hashsig **)out, buf, len, opt);
}