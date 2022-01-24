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
typedef  int /*<<< orphan*/  git_remote_head ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  expected_ref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const***,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const**,size_t,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC2(git_remote *remote, expected_ref expected_refs[], size_t expected_refs_len)
{
	const git_remote_head **actual_refs;
	size_t actual_refs_len;

	FUNC0(&actual_refs, &actual_refs_len, remote);
	FUNC1(actual_refs, actual_refs_len, expected_refs, expected_refs_len);
}