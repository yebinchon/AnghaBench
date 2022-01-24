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
struct stat_data {int dummy; } ;
struct stat {int dummy; } ;
struct index_state {int dummy; } ;

/* Variables and functions */
 int MTIME_CHANGED ; 
 scalar_t__ FUNC0 (struct index_state const*,struct stat_data const*) ; 
 int FUNC1 (struct stat_data const*,struct stat*) ; 

int FUNC2(const struct index_state *istate,
			 const struct stat_data *sd, struct stat *st)
{
	if (FUNC0(istate, sd))
		return MTIME_CHANGED;
	return FUNC1(sd, st);
}