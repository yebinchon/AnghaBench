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
typedef  int /*<<< orphan*/  git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(const git_index_entry **entries, void *data)
{
	git_index *index = data;

	if(entries[0] == NULL)
		return FUNC0(index, entries[1]);
	else
		return FUNC0(index, entries[0]);
}