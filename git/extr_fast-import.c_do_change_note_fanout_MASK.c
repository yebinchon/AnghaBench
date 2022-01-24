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
typedef  scalar_t__ uintmax_t ;
struct tree_entry {struct tree_content* tree; TYPE_2__* versions; TYPE_1__* name; } ;
struct tree_content {unsigned int entry_count; struct tree_entry** entries; } ;
struct object_id {int dummy; } ;
struct TYPE_6__ {unsigned int hexsz; } ;
struct TYPE_5__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {unsigned int str_len; int /*<<< orphan*/  str_dat; } ;

/* Variables and functions */
 int GIT_MAX_HEXSZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_entry*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 TYPE_3__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC7 (struct tree_entry*,char*,struct tree_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tree_entry*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tree_content*) ; 

__attribute__((used)) static uintmax_t FUNC9(
		struct tree_entry *orig_root, struct tree_entry *root,
		char *hex_oid, unsigned int hex_oid_len,
		char *fullpath, unsigned int fullpath_len,
		unsigned char fanout)
{
	struct tree_content *t;
	struct tree_entry *e, leaf;
	unsigned int i, tmp_hex_oid_len, tmp_fullpath_len;
	uintmax_t num_notes = 0;
	struct object_id oid;
	/* hex oid + '/' between each pair of hex digits + NUL */
	char realpath[GIT_MAX_HEXSZ + ((GIT_MAX_HEXSZ / 2) - 1) + 1];
	const unsigned hexsz = the_hash_algo->hexsz;

	if (!root->tree)
		FUNC4(root);
	t = root->tree;

	for (i = 0; t && i < t->entry_count; i++) {
		e = t->entries[i];
		tmp_hex_oid_len = hex_oid_len + e->name->str_len;
		tmp_fullpath_len = fullpath_len;

		/*
		 * We're interested in EITHER existing note entries (entries
		 * with exactly 40 hex chars in path, not including directory
		 * separators), OR directory entries that may contain note
		 * entries (with < 40 hex chars in path).
		 * Also, each path component in a note entry must be a multiple
		 * of 2 chars.
		 */
		if (!e->versions[1].mode ||
		    tmp_hex_oid_len > hexsz ||
		    e->name->str_len % 2)
			continue;

		/* This _may_ be a note entry, or a subdir containing notes */
		FUNC5(hex_oid + hex_oid_len, e->name->str_dat,
		       e->name->str_len);
		if (tmp_fullpath_len)
			fullpath[tmp_fullpath_len++] = '/';
		FUNC5(fullpath + tmp_fullpath_len, e->name->str_dat,
		       e->name->str_len);
		tmp_fullpath_len += e->name->str_len;
		fullpath[tmp_fullpath_len] = '\0';

		if (tmp_hex_oid_len == hexsz && !FUNC3(hex_oid, &oid)) {
			/* This is a note entry */
			if (fanout == 0xff) {
				/* Counting mode, no rename */
				num_notes++;
				continue;
			}
			FUNC1(hex_oid, fanout, realpath);
			if (!FUNC6(fullpath, realpath)) {
				/* Note entry is in correct location */
				num_notes++;
				continue;
			}

			/* Rename fullpath to realpath */
			if (!FUNC7(orig_root, fullpath, &leaf, 0))
				FUNC2("Failed to remove path %s", fullpath);
			FUNC8(orig_root, realpath,
				&leaf.versions[1].oid,
				leaf.versions[1].mode,
				leaf.tree);
		} else if (FUNC0(e->versions[1].mode)) {
			/* This is a subdir that may contain note entries */
			num_notes += FUNC9(orig_root, e,
				hex_oid, tmp_hex_oid_len,
				fullpath, tmp_fullpath_len, fanout);
		}

		/* The above may have reallocated the current tree_content */
		t = root->tree;
	}
	return num_notes;
}