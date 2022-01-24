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
struct seq_file {int dummy; } ;
struct pg_state {int /*<<< orphan*/  start_address; int /*<<< orphan*/  marker; struct seq_file* seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_VIRT_START ; 
 int /*<<< orphan*/  PAGE_OFFSET ; 
 int /*<<< orphan*/  address_markers ; 
 int /*<<< orphan*/  FUNC0 (struct pg_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pg_state*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	struct pg_state st = {
		.seq = m,
		.marker = address_markers,
		.start_address = PAGE_OFFSET,
	};

#ifdef CONFIG_PPC64
	if (!radix_enabled())
		st.start_address = KERN_VIRT_START;
#endif

	/* Traverse kernel page tables */
	FUNC2(&st);
	FUNC0(&st, 0, 0, 0);
	return 0;
}