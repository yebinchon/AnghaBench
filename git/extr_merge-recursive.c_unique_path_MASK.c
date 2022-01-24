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
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;
struct path_hashmap_entry {int /*<<< orphan*/  e; int /*<<< orphan*/  path; } ;
struct merge_options {TYPE_1__* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  current_file_dir_set; int /*<<< orphan*/  call_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct path_hashmap_entry*,char const*,int /*<<< orphan*/ ,size_t) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,char const*) ; 
 char* FUNC8 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,size_t) ; 

__attribute__((used)) static char *FUNC10(struct merge_options *opt,
			 const char *path,
			 const char *branch)
{
	struct path_hashmap_entry *entry;
	struct strbuf newpath = STRBUF_INIT;
	int suffix = 0;
	size_t base_len;

	FUNC7(&newpath, "%s~", path);
	FUNC1(&newpath, branch);

	base_len = newpath.len;
	while (FUNC5(&opt->priv->current_file_dir_set,
				     FUNC6(newpath.buf), newpath.buf) ||
	       (!opt->priv->call_depth && FUNC2(newpath.buf))) {
		FUNC9(&newpath, base_len);
		FUNC7(&newpath, "_%d", suffix++);
	}

	FUNC0(entry, path, newpath.buf, newpath.len);
	FUNC4(&entry->e, FUNC6(entry->path));
	FUNC3(&opt->priv->current_file_dir_set, &entry->e);
	return FUNC8(&newpath, NULL);
}