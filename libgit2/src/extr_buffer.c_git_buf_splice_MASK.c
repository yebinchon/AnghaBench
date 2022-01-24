#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t size; char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 

int FUNC5(
	git_buf *buf,
	size_t where,
	size_t nb_to_remove,
	const char *data,
	size_t nb_to_insert)
{
	char *splice_loc;
	size_t new_size, alloc_size;

	FUNC2(buf && where <= buf->size && nb_to_remove <= buf->size - where);

	splice_loc = buf->ptr + where;

	/* Ported from git.git
	 * https://github.com/git/git/blob/16eed7c/strbuf.c#L159-176
	 */
	FUNC1(&new_size, (buf->size - nb_to_remove), nb_to_insert);
	FUNC1(&alloc_size, new_size, 1);
	FUNC0(buf, alloc_size);

	FUNC4(splice_loc + nb_to_insert,
		splice_loc + nb_to_remove,
		buf->size - where - nb_to_remove);

	FUNC3(splice_loc, data, nb_to_insert);

	buf->size = new_size;
	buf->ptr[buf->size] = '\0';
	return 0;
}