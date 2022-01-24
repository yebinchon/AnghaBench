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
struct histindex {int /*<<< orphan*/  rcha; int /*<<< orphan*/  next_ptrs; int /*<<< orphan*/  line_map; int /*<<< orphan*/  records; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct histindex *index)
{
	FUNC1(index->records);
	FUNC1(index->line_map);
	FUNC1(index->next_ptrs);
	FUNC0(&index->rcha);
}