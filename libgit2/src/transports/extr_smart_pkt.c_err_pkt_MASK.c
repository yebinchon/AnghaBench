#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_pkt_progress ;
struct TYPE_5__ {size_t len; char* error; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ git_pkt_err ;
typedef  int /*<<< orphan*/  git_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int /*<<< orphan*/  GIT_PKT_ERR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (char const*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC7(git_pkt **out, const char *line, size_t len)
{
	git_pkt_err *pkt = NULL;
	size_t alloclen;

	/* Remove "ERR " from the line */
	if (FUNC4(line, len, "ERR "))
		goto out_err;
	line += 4;
	len -= 4;

	FUNC1(&alloclen, sizeof(git_pkt_progress), len);
	FUNC1(&alloclen, alloclen, 1);
	pkt = FUNC3(alloclen);
	FUNC0(pkt);
	pkt->type = GIT_PKT_ERR;
	pkt->len = len;

	FUNC6(pkt->error, line, len);
	pkt->error[len] = '\0';

	*out = (git_pkt *) pkt;

	return 0;

out_err:
	FUNC5(GIT_ERROR_NET, "error parsing ERR pkt-line");
	FUNC2(pkt);
	return -1;
}