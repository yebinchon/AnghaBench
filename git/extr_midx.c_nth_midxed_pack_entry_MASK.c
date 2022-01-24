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
typedef  scalar_t__ uint32_t ;
struct repository {int dummy; } ;
struct packed_git {scalar_t__ num_bad_objects; scalar_t__ bad_object_sha1; } ;
struct pack_entry {struct packed_git* p; int /*<<< orphan*/  offset; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct multi_pack_index {scalar_t__ num_objects; struct packed_git** packs; } ;
struct TYPE_2__ {scalar_t__ rawsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*,struct multi_pack_index*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct multi_pack_index*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct multi_pack_index*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct repository*,struct multi_pack_index*,scalar_t__) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC8(struct repository *r,
				 struct multi_pack_index *m,
				 struct pack_entry *e,
				 uint32_t pos)
{
	uint32_t pack_int_id;
	struct packed_git *p;

	if (pos >= m->num_objects)
		return 0;

	pack_int_id = FUNC6(m, pos);

	if (FUNC7(r, m, pack_int_id))
		FUNC1(FUNC0("error preparing packfile from multi-pack-index"));
	p = m->packs[pack_int_id];

	/*
	* We are about to tell the caller where they can locate the
	* requested object.  We better make sure the packfile is
	* still here and can be accessed before supplying that
	* answer, as it may have been deleted since the MIDX was
	* loaded!
	*/
	if (!FUNC3(p))
		return 0;

	if (p->num_bad_objects) {
		uint32_t i;
		struct object_id oid;
		FUNC4(&oid, m, pos);
		for (i = 0; i < p->num_bad_objects; i++)
			if (FUNC2(oid.hash,
				   p->bad_object_sha1 + the_hash_algo->rawsz * i))
				return 0;
	}

	e->offset = FUNC5(m, pos);
	e->p = p;

	return 1;
}