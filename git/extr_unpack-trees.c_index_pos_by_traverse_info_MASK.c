#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct unpack_trees_options {TYPE_2__* src_index; } ;
struct traverse_info {struct unpack_trees_options* data; } ;
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct name_entry {int /*<<< orphan*/  pathlen; int /*<<< orphan*/  path; } ;
struct TYPE_4__ {TYPE_1__** cache; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct strbuf STRBUF_INIT ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,struct traverse_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static int FUNC6(struct name_entry *names,
				      struct traverse_info *info)
{
	struct unpack_trees_options *o = info->data;
	struct strbuf name = STRBUF_INIT;
	int pos;

	FUNC4(&name, info, names->path, names->pathlen);
	FUNC3(&name, '/');
	pos = FUNC1(o->src_index, name.buf, name.len);
	if (pos >= 0)
		FUNC0("This is a directory and should not exist in index");
	pos = -pos - 1;
	if (!FUNC2(o->src_index->cache[pos]->name, name.buf) ||
	    (pos > 0 && FUNC2(o->src_index->cache[pos-1]->name, name.buf)))
		FUNC0("pos must point at the first entry in this directory");
	FUNC5(&name);
	return pos;
}