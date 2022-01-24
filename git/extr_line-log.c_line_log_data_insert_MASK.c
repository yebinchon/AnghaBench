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
struct line_log_data {char* path; struct line_log_data* next; int /*<<< orphan*/  ranges; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long,long) ; 
 struct line_log_data* FUNC3 (struct line_log_data*,char*,struct line_log_data**) ; 
 struct line_log_data* FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct line_log_data **list,
				 char *path,
				 long begin, long end)
{
	struct line_log_data *ip;
	struct line_log_data *p = FUNC3(*list, path, &ip);

	if (p) {
		FUNC2(&p->ranges, begin, end);
		FUNC0(path);
		return;
	}

	p = FUNC4(1, sizeof(struct line_log_data));
	p->path = path;
	FUNC1(&p->ranges, begin, end);
	if (ip) {
		p->next = ip->next;
		ip->next = p;
	} else {
		p->next = *list;
		*list = p;
	}
}