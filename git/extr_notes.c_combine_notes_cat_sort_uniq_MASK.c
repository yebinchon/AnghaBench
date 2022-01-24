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
struct string_list {int dummy; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
typedef  struct object_id const object_id ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  blob_type ; 
 scalar_t__ FUNC0 (struct string_list*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 scalar_t__ FUNC2 (struct string_list*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  string_list_join_lines_helper ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id const*) ; 

int FUNC8(struct object_id *cur_oid,
				const struct object_id *new_oid)
{
	struct string_list sort_uniq_list = STRING_LIST_INIT_DUP;
	struct strbuf buf = STRBUF_INIT;
	int ret = 1;

	/* read both note blob objects into unique_lines */
	if (FUNC2(&sort_uniq_list, cur_oid))
		goto out;
	if (FUNC2(&sort_uniq_list, new_oid))
		goto out;
	FUNC5(&sort_uniq_list, 0);
	FUNC6(&sort_uniq_list);
	FUNC4(&sort_uniq_list, 0);

	/* create a new blob object from sort_uniq_list */
	if (FUNC0(&sort_uniq_list,
				 string_list_join_lines_helper, &buf))
		goto out;

	ret = FUNC7(buf.buf, buf.len, blob_type, cur_oid);

out:
	FUNC1(&buf);
	FUNC3(&sort_uniq_list, 0);
	return ret;
}