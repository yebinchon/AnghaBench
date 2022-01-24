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
struct diffstat_t {scalar_t__ nr; struct diffstat_file** files; int /*<<< orphan*/  alloc; } ;
struct diffstat_file {int is_renamed; void* name; int /*<<< orphan*/ * from_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diffstat_file**,scalar_t__,int /*<<< orphan*/ ) ; 
 struct diffstat_file* FUNC1 (int,int) ; 
 void* FUNC2 (char const*) ; 

__attribute__((used)) static struct diffstat_file *FUNC3(struct diffstat_t *diffstat,
					  const char *name_a,
					  const char *name_b)
{
	struct diffstat_file *x;
	x = FUNC1(1, sizeof(*x));
	FUNC0(diffstat->files, diffstat->nr + 1, diffstat->alloc);
	diffstat->files[diffstat->nr++] = x;
	if (name_b) {
		x->from_name = FUNC2(name_a);
		x->name = FUNC2(name_b);
		x->is_renamed = 1;
	}
	else {
		x->from_name = NULL;
		x->name = FUNC2(name_a);
	}
	return x;
}