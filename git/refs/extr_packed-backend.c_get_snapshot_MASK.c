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
struct snapshot {int dummy; } ;
struct packed_ref_store {struct snapshot* snapshot; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct snapshot* FUNC0 (struct packed_ref_store*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct packed_ref_store*) ; 

__attribute__((used)) static struct snapshot *FUNC3(struct packed_ref_store *refs)
{
	if (!FUNC1(&refs->lock))
		FUNC2(refs);

	if (!refs->snapshot)
		refs->snapshot = FUNC0(refs);

	return refs->snapshot;
}