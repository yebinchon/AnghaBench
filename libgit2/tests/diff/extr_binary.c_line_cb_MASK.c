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
typedef  void git_diff_line ;
typedef  void git_diff_hunk ;
typedef  void git_diff_delta ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(
	const git_diff_delta *delta,
	const git_diff_hunk *hunk,
	const git_diff_line *line,
	void *payload)
{
	FUNC0(delta);
	FUNC0(hunk);
	FUNC0(line);
	FUNC0(payload);

	FUNC1("did not expect line callback");
	return 0;
}