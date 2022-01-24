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
struct agp_memory {int page_count; } ;
typedef  int off_t ;

/* Variables and functions */
 int I460_IOPAGES_PER_KPAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct agp_memory*,int,int) ; 

__attribute__((used)) static int FUNC3(struct agp_memory *mem,
				off_t pg_start, int type)
{
	int i;

	FUNC2("i460_remove_memory_small_io_page(mem=%p, pg_start=%ld, type=%d)\n",
		 mem, pg_start, type);

	pg_start = I460_IOPAGES_PER_KPAGE * pg_start;

	for (i = pg_start; i < (pg_start + I460_IOPAGES_PER_KPAGE * mem->page_count); i++)
		FUNC1(i, 0);
	FUNC0(i - 1);
	return 0;
}