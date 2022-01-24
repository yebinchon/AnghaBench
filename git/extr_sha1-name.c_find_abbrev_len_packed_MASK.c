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
struct packed_git {struct packed_git* next; } ;
struct multi_pack_index {struct multi_pack_index* next; } ;
struct min_abbrev_data {int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct multi_pack_index*,struct min_abbrev_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct packed_git*,struct min_abbrev_data*) ; 
 struct multi_pack_index* FUNC2 (int /*<<< orphan*/ ) ; 
 struct packed_git* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct min_abbrev_data *mad)
{
	struct multi_pack_index *m;
	struct packed_git *p;

	for (m = FUNC2(mad->repo); m; m = m->next)
		FUNC0(m, mad);
	for (p = FUNC3(mad->repo); p; p = p->next)
		FUNC1(p, mad);
}