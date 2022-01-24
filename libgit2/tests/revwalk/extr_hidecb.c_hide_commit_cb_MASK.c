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
typedef  void git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/ * commit_ids ; 
 scalar_t__ FUNC1 (void const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const git_oid *commit_id, void *data)
{
	FUNC0(commit_id);
	FUNC0(data);

	return (FUNC1(commit_id, &commit_ids[5]) == 0);
}