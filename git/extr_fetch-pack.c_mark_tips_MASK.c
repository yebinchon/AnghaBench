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
struct oid_array {int nr; int /*<<< orphan*/ * oid; } ;
struct fetch_negotiator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fetch_negotiator*) ; 
 int /*<<< orphan*/  FUNC1 (struct fetch_negotiator*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rev_list_insert_ref_oid ; 

__attribute__((used)) static void FUNC2(struct fetch_negotiator *negotiator,
		      const struct oid_array *negotiation_tips)
{
	int i;

	if (!negotiation_tips) {
		FUNC0(rev_list_insert_ref_oid, negotiator);
		return;
	}

	for (i = 0; i < negotiation_tips->nr; i++)
		FUNC1(negotiator, NULL,
				    &negotiation_tips->oid[i]);
	return;
}