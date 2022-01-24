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
struct repository {struct ref_store* refs; int /*<<< orphan*/  gitdir; } ;
struct ref_store {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  REF_STORE_ALL_CAPS ; 
 struct ref_store* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ref_store *FUNC2(struct repository *r)
{
	if (r->refs)
		return r->refs;

	if (!r->gitdir)
		FUNC0("attempting to get main_ref_store outside of repository");

	r->refs = FUNC1(r->gitdir, REF_STORE_ALL_CAPS);
	return r->refs;
}