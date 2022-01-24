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
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct path_hashmap_entry {int /*<<< orphan*/  e; int /*<<< orphan*/  path; } ;
struct object_id {int dummy; } ;
struct merge_options {TYPE_1__* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  current_file_dir_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct path_hashmap_entry*,char const*,int /*<<< orphan*/ ,int) ; 
 int READ_TREE_RECURSIVE ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int) ; 

__attribute__((used)) static int FUNC7(const struct object_id *oid,
			   struct strbuf *base, const char *path,
			   unsigned int mode, int stage, void *context)
{
	struct path_hashmap_entry *entry;
	int baselen = base->len;
	struct merge_options *opt = context;

	FUNC5(base, path);

	FUNC0(entry, path, base->buf, base->len);
	FUNC3(&entry->e, FUNC4(entry->path));
	FUNC2(&opt->priv->current_file_dir_set, &entry->e);

	FUNC6(base, baselen);
	return (FUNC1(mode) ? READ_TREE_RECURSIVE : 0);
}