#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t length; } ;
struct pack_backend {struct git_pack_file* last_found; TYPE_1__ packs; } ;
struct git_pack_file {int dummy; } ;
struct git_pack_entry {int dummy; } ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 scalar_t__ FUNC0 (struct git_pack_entry*,struct git_pack_file*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct git_pack_file* FUNC1 (TYPE_1__*,size_t) ; 

__attribute__((used)) static int FUNC2(
	struct git_pack_entry *e,
	struct pack_backend *backend,
	const git_oid *oid,
	struct git_pack_file *last_found)
{
	size_t i;

	if (last_found &&
		FUNC0(e, last_found, oid, GIT_OID_HEXSZ) == 0)
		return 0;

	for (i = 0; i < backend->packs.length; ++i) {
		struct git_pack_file *p;

		p = FUNC1(&backend->packs, i);
		if (p == last_found)
			continue;

		if (FUNC0(e, p, oid, GIT_OID_HEXSZ) == 0) {
			backend->last_found = p;
			return 0;
		}
	}

	return -1;
}