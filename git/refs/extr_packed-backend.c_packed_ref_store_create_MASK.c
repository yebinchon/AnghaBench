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
struct packed_ref_store {unsigned int store_flags; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_store*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  refs_be_packed ; 
 struct packed_ref_store* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

struct ref_store *FUNC4(const char *path,
					  unsigned int store_flags)
{
	struct packed_ref_store *refs = FUNC2(1, sizeof(*refs));
	struct ref_store *ref_store = (struct ref_store *)refs;

	FUNC0(ref_store, &refs_be_packed);
	refs->store_flags = store_flags;

	refs->path = FUNC3(path);
	FUNC1("packed-refs", &refs->path);

	return ref_store;
}