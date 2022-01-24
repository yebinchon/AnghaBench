#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tree_entry {TYPE_1__* versions; TYPE_2__* name; struct tree_content* tree; } ;
struct tree_content {scalar_t__ entry_count; scalar_t__ entry_capacity; struct tree_entry** entries; int /*<<< orphan*/  delta_depth; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct object_entry {scalar_t__ pack_id; scalar_t__ type; int /*<<< orphan*/  depth; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_6__ {int /*<<< orphan*/  rawsz; } ;
struct TYPE_5__ {scalar_t__ str_len; } ;
struct TYPE_4__ {struct object_id oid; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ MAX_PACK_ID ; 
 scalar_t__ OBJ_TREE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct object_entry* FUNC1 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (struct object_entry*,unsigned long*) ; 
 struct tree_content* FUNC5 (struct tree_content*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC7 (struct object_id*) ; 
 struct tree_content* FUNC8 (int) ; 
 struct tree_entry* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct object_id*) ; 
 char* FUNC11 (struct object_id*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 TYPE_3__* the_hash_algo ; 
 TYPE_2__* FUNC13 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct tree_entry *root)
{
	struct object_id *oid = &root->versions[1].oid;
	struct object_entry *myoe;
	struct tree_content *t;
	unsigned long size;
	char *buf;
	const char *c;

	root->tree = t = FUNC8(8);
	if (FUNC7(oid))
		return;

	myoe = FUNC1(oid);
	if (myoe && myoe->pack_id != MAX_PACK_ID) {
		if (myoe->type != OBJ_TREE)
			FUNC0("Not a tree: %s", FUNC10(oid));
		t->delta_depth = myoe->depth;
		buf = FUNC4(myoe, &size);
		if (!buf)
			FUNC0("Can't load tree %s", FUNC10(oid));
	} else {
		enum object_type type;
		buf = FUNC11(oid, &type, &size);
		if (!buf || type != OBJ_TREE)
			FUNC0("Can't load tree %s", FUNC10(oid));
	}

	c = buf;
	while (c != (buf + size)) {
		struct tree_entry *e = FUNC9();

		if (t->entry_count == t->entry_capacity)
			root->tree = t = FUNC5(t, t->entry_count);
		t->entries[t->entry_count++] = e;

		e->tree = NULL;
		c = FUNC3(c, &e->versions[1].mode);
		if (!c)
			FUNC0("Corrupt mode in %s", FUNC10(oid));
		e->versions[0].mode = e->versions[1].mode;
		e->name = FUNC13(c, FUNC12(c));
		c += e->name->str_len + 1;
		FUNC6(e->versions[0].oid.hash, (unsigned char *)c);
		FUNC6(e->versions[1].oid.hash, (unsigned char *)c);
		c += the_hash_algo->rawsz;
	}
	FUNC2(buf);
}