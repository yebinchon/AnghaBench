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
typedef  int /*<<< orphan*/  git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  GET_ALL_ERRORS ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,char const*,int,int /*<<< orphan*/ ) ; 

int FUNC1(
	git_config_entry **out, const git_config *cfg, const char *name)
{
	return FUNC0(out, cfg, name, true, GET_ALL_ERRORS);
}