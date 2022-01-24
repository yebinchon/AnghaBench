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
struct cache_entry {int ce_flags; scalar_t__ ce_mode; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int CE_CONFLICTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(const struct cache_entry *a, const struct cache_entry *b)
{
	if (!!a != !!b)
		return 0;
	if (!a && !b)
		return 1;
	if ((a->ce_flags | b->ce_flags) & CE_CONFLICTED)
		return 0;
	return a->ce_mode == b->ce_mode &&
	       FUNC0(&a->oid, &b->oid);
}