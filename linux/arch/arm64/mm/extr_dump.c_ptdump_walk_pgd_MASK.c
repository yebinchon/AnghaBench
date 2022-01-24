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
struct ptdump_info {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  mm; int /*<<< orphan*/  markers; } ;
struct pg_state {int /*<<< orphan*/  marker; struct seq_file* seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pg_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pg_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct seq_file *m, struct ptdump_info *info)
{
	struct pg_state st = {
		.seq = m,
		.marker = info->markers,
	};

	FUNC1(&st, info->mm, info->base_addr);

	FUNC0(&st, 0, 0, 0);
}