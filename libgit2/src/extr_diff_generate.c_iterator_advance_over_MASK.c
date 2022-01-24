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
typedef  int /*<<< orphan*/  git_iterator_status_t ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index_entry ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int FUNC0 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(
	const git_index_entry **entry,
	git_iterator_status_t *status,
	git_iterator *iterator)
{
	int error = FUNC0(entry, status, iterator);

	if (error == GIT_ITEROVER) {
		*entry = NULL;
		error = 0;
	}

	return error;
}