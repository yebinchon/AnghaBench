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
struct packed_git {int /*<<< orphan*/  pack_name; scalar_t__ index_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,struct packed_git*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t*) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct packed_git *p)
{
	char *idx_name;
	size_t len;
	int ret;

	if (p->index_data)
		return 0;

	if (!FUNC3(p->pack_name, ".pack", &len))
		FUNC0("pack_name does not end in .pack");
	idx_name = FUNC4("%.*s.idx", (int)len, p->pack_name);
	ret = FUNC1(idx_name, p);
	FUNC2(idx_name);
	return ret;
}