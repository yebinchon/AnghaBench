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
struct stat {int dummy; } ;
struct checkout {int /*<<< orphan*/  base_dir_len; scalar_t__ refresh_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct stat*) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int FUNC2(int fd, const struct checkout *state, struct stat *st)
{
	/* use fstat() only when path == ce->name */
	if (FUNC1() &&
	    state->refresh_cache && !state->base_dir_len) {
		FUNC0(fd, st);
		return 1;
	}
	return 0;
}