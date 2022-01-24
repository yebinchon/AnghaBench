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
struct stat_validity {scalar_t__ sd; } ;
struct stat_data {int dummy; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct stat*) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (struct stat_validity*) ; 
 scalar_t__ FUNC4 (int,int) ; 

void FUNC5(struct stat_validity *sv, int fd)
{
	struct stat st;

	if (FUNC2(fd, &st) < 0 || !FUNC0(st.st_mode))
		FUNC3(sv);
	else {
		if (!sv->sd)
			sv->sd = FUNC4(1, sizeof(struct stat_data));
		FUNC1(sv->sd, &st);
	}
}