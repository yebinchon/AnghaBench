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
struct string_list {int nr; TYPE_1__* items; int /*<<< orphan*/  cmp; } ;
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_DUP ; 
 int FUNC0 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  pack_copy_cmp ; 
 scalar_t__ FUNC1 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*) ; 

__attribute__((used)) static int FUNC6(struct strbuf *src, struct strbuf *dst)
{
	size_t src_len = src->len, dst_len = dst->len;
	struct string_list paths = STRING_LIST_INIT_DUP;
	int i;
	int ret = 0;

	if (FUNC1(&paths, src->buf) < 0)
		return -1;
	paths.cmp = pack_copy_cmp;
	FUNC5(&paths);

	for (i = 0; i < paths.nr; i++) {
		const char *name = paths.items[i].string;

		FUNC2(src, "/%s", name);
		FUNC2(dst, "/%s", name);

		ret |= FUNC0(src, dst);

		FUNC3(src, src_len);
		FUNC3(dst, dst_len);
	}

	FUNC4(&paths, 0);
	return ret;
}