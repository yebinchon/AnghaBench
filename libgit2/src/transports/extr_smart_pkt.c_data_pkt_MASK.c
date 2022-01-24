#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_pkt_progress ;
struct TYPE_4__ {size_t len; int /*<<< orphan*/  data; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ git_pkt_data ;
typedef  int /*<<< orphan*/  git_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int,size_t) ; 
 int /*<<< orphan*/  GIT_PKT_DATA ; 
 TYPE_1__* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static int FUNC4(git_pkt **out, const char *line, size_t len)
{
	git_pkt_data *pkt;
	size_t alloclen;

	line++;
	len--;

	FUNC1(&alloclen, sizeof(git_pkt_progress), len);
	pkt = FUNC2(alloclen);
	FUNC0(pkt);

	pkt->type = GIT_PKT_DATA;
	pkt->len = len;
	FUNC3(pkt->data, line, len);

	*out = (git_pkt *) pkt;

	return 0;
}