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
struct ref_to_prune {struct ref_to_prune* next; } ;
struct files_ref_store {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_to_prune*) ; 
 int /*<<< orphan*/  FUNC1 (struct files_ref_store*,struct ref_to_prune*) ; 

__attribute__((used)) static void FUNC2(struct files_ref_store *refs, struct ref_to_prune **refs_to_prune)
{
	while (*refs_to_prune) {
		struct ref_to_prune *r = *refs_to_prune;
		*refs_to_prune = r->next;
		FUNC1(refs, r);
		FUNC0(r);
	}
}