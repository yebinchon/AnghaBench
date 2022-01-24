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
struct diffstat_t {int dummy; } ;
struct diff_options {TYPE_1__* repo; scalar_t__ prefix_length; } ;
struct diff_filepair {TYPE_2__* two; TYPE_2__* one; } ;
struct TYPE_6__ {char const* path; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,TYPE_2__*,TYPE_2__*,struct diffstat_t*,struct diff_options*,struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char const**,char const**) ; 

__attribute__((used)) static void FUNC5(struct diff_filepair *p, struct diff_options *o,
			 struct diffstat_t *diffstat)
{
	const char *name;
	const char *other;

	if (FUNC0(p)) {
		/* unmerged */
		FUNC1(p->one->path, NULL, NULL, NULL,
				 diffstat, o, p);
		return;
	}

	name = p->one->path;
	other = (FUNC3(name, p->two->path) ? p->two->path : NULL);

	if (o->prefix_length)
		FUNC4(o->prefix_length, &name, &other);

	FUNC2(p->one, o->repo->index);
	FUNC2(p->two, o->repo->index);

	FUNC1(name, other, p->one, p->two,
			 diffstat, o, p);
}