#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tag {size_t pack_id; int /*<<< orphan*/  oid; struct tag* next_tag; } ;
struct packed_git {char* pack_name; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct branch {size_t pack_id; int /*<<< orphan*/  oid; struct branch* table_next_branch; } ;
struct TYPE_7__ {scalar_t__ depth; scalar_t__ offset; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  pack_name; int /*<<< orphan*/  pack_fd; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct packed_git* FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 struct packed_git** all_packs ; 
 struct branch** branch_table ; 
 int branch_table_sz ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tag* first_tag ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct packed_git*) ; 
 int /*<<< orphan*/  FUNC14 (size_t) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_3__ last_blob ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 scalar_t__ object_count ; 
 char* FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_1__* pack_data ; 
 scalar_t__ pack_edges ; 
 int /*<<< orphan*/  pack_file ; 
 size_t pack_id ; 
 int /*<<< orphan*/  pack_size ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ unpack_limit ; 

__attribute__((used)) static void FUNC21(void)
{
	static int running;

	if (running || !pack_data)
		return;

	running = 1;
	FUNC2();
	if (object_count) {
		struct packed_git *new_p;
		struct object_id cur_pack_oid;
		char *idx_name;
		int i;
		struct branch *b;
		struct tag *t;

		FUNC4(pack_data);
		FUNC8(pack_file, cur_pack_oid.hash, 0);
		FUNC9(pack_data->pack_fd, pack_data->hash,
					 pack_data->pack_name, object_count,
					 cur_pack_oid.hash, pack_size);

		if (object_count <= unpack_limit) {
			if (!FUNC16(pack_data)) {
				FUNC14(pack_id);
				goto discard_pack;
			}
		}

		FUNC3(pack_data->pack_fd);
		idx_name = FUNC15(FUNC5());

		/* Register the packfile with core git's machinery. */
		new_p = FUNC1(idx_name, FUNC19(idx_name), 1);
		if (!new_p)
			FUNC6("core git rejected index %s", idx_name);
		all_packs[pack_id] = new_p;
		FUNC13(the_repository, new_p);
		FUNC12(idx_name);

		/* Print the boundary */
		if (pack_edges) {
			FUNC10(pack_edges, "%s:", new_p->pack_name);
			for (i = 0; i < branch_table_sz; i++) {
				for (b = branch_table[i]; b; b = b->table_next_branch) {
					if (b->pack_id == pack_id)
						FUNC10(pack_edges, " %s",
							FUNC17(&b->oid));
				}
			}
			for (t = first_tag; t; t = t->next_tag) {
				if (t->pack_id == pack_id)
					FUNC10(pack_edges, " %s",
						FUNC17(&t->oid));
			}
			FUNC11('\n', pack_edges);
			FUNC7(pack_edges);
		}

		pack_id++;
	}
	else {
discard_pack:
		FUNC3(pack_data->pack_fd);
		FUNC20(pack_data->pack_name);
	}
	FUNC0(pack_data);
	running = 0;

	/* We can't carry a delta across packfiles. */
	FUNC18(&last_blob.data);
	last_blob.offset = 0;
	last_blob.depth = 0;
}