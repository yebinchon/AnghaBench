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
struct disambiguate_state {int /*<<< orphan*/  ambiguous; int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 struct multi_pack_index* FUNC0 (int /*<<< orphan*/ ) ; 
 struct packed_git* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct multi_pack_index*,struct disambiguate_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct packed_git*,struct disambiguate_state*) ; 

__attribute__((used)) static void FUNC4(struct disambiguate_state *ds)
{
	struct multi_pack_index *m;
	struct packed_git *p;

	for (m = FUNC0(ds->repo); m && !ds->ambiguous;
	     m = m->next)
		FUNC2(m, ds);
	for (p = FUNC1(ds->repo); p && !ds->ambiguous;
	     p = p->next)
		FUNC3(p, ds);
}