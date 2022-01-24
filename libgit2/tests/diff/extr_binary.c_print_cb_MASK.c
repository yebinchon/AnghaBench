#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  content_len; int /*<<< orphan*/  content; } ;
typedef  TYPE_1__ git_diff_line ;
struct TYPE_6__ {int /*<<< orphan*/  header_len; int /*<<< orphan*/  header; } ;
typedef  TYPE_2__ git_diff_hunk ;
typedef  int /*<<< orphan*/  git_diff_delta ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(
	const git_diff_delta *delta,
	const git_diff_hunk *hunk,
	const git_diff_line *line,
	void *payload)
{
	git_buf *buf = (git_buf *)payload;

	FUNC0(delta);

	if (hunk)
		FUNC2(buf, hunk->header, hunk->header_len);

	if (line)
		FUNC2(buf, line->content, line->content_len);

	return FUNC1(buf) ? -1 : 0;
}