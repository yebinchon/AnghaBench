#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pathspec {TYPE_1__* items; } ;
struct index_state {int dummy; } ;
struct dir_struct {int dummy; } ;
struct TYPE_2__ {char* match; } ;

/* Variables and functions */
 size_t FUNC0 (struct pathspec const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dir_struct*,struct index_state*,char const*,size_t,struct pathspec const*) ; 

int FUNC2(struct dir_struct *dir,
		   struct index_state *istate,
		   const struct pathspec *pathspec)
{
	const char *prefix;
	size_t prefix_len;

	/*
	 * Calculate common prefix for the pathspec, and
	 * use that to optimize the directory walk
	 */
	prefix_len = FUNC0(pathspec);
	prefix = prefix_len ? pathspec->items[0].match : "";

	/* Read the directory and prune it */
	FUNC1(dir, istate, prefix, prefix_len, pathspec);

	return prefix_len;
}