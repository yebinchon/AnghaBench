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
struct ref_store {int dummy; } ;
struct ref_iterator {int dummy; } ;
struct files_ref_store {int /*<<< orphan*/  gitcommondir; int /*<<< orphan*/  gitdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_STORE_READ ; 
 struct files_ref_store* FUNC0 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 struct ref_iterator* FUNC1 (int /*<<< orphan*/ ,struct ref_iterator*,struct ref_iterator*,int /*<<< orphan*/ ,struct files_ref_store*) ; 
 struct ref_iterator* FUNC2 (struct ref_store*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reflog_iterator_select ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ref_iterator *FUNC4(struct ref_store *ref_store)
{
	struct files_ref_store *refs =
		FUNC0(ref_store, REF_STORE_READ,
			       "reflog_iterator_begin");

	if (!FUNC3(refs->gitdir, refs->gitcommondir)) {
		return FUNC2(ref_store, refs->gitcommondir);
	} else {
		return FUNC1(
			0,
			FUNC2(ref_store, refs->gitdir),
			FUNC2(ref_store, refs->gitcommondir),
			reflog_iterator_select, refs);
	}
}