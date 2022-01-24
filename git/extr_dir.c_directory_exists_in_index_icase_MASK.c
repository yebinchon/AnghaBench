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
struct index_state {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  ce_mode; } ;
typedef  enum exist_status { ____Placeholder_exist_status } exist_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ignore_case ; 
 scalar_t__ FUNC1 (struct index_state*,char const*,int) ; 
 int index_directory ; 
 struct cache_entry* FUNC2 (struct index_state*,char const*,int,int /*<<< orphan*/ ) ; 
 int index_gitdir ; 
 int index_nonexistent ; 

__attribute__((used)) static enum exist_status FUNC3(struct index_state *istate,
							 const char *dirname, int len)
{
	struct cache_entry *ce;

	if (FUNC1(istate, dirname, len))
		return index_directory;

	ce = FUNC2(istate, dirname, len, ignore_case);
	if (ce && FUNC0(ce->ce_mode))
		return index_gitdir;

	return index_nonexistent;
}