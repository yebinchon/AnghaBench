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
struct strbuf {size_t len; char* buf; } ;
struct format_commit_context {scalar_t__ flush_type; } ;

/* Variables and functions */
 int FUNC0 (struct strbuf*,char const*,void*) ; 
 int FUNC1 (struct strbuf*,char const*,void*) ; 
 scalar_t__ no_flush ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int) ; 

__attribute__((used)) static size_t FUNC4(struct strbuf *sb, /* in UTF-8 */
				 const char *placeholder,
				 void *context)
{
	int consumed;
	size_t orig_len;
	enum {
		NO_MAGIC,
		ADD_LF_BEFORE_NON_EMPTY,
		DEL_LF_BEFORE_EMPTY,
		ADD_SP_BEFORE_NON_EMPTY
	} magic = NO_MAGIC;

	switch (placeholder[0]) {
	case '-':
		magic = DEL_LF_BEFORE_EMPTY;
		break;
	case '+':
		magic = ADD_LF_BEFORE_NON_EMPTY;
		break;
	case ' ':
		magic = ADD_SP_BEFORE_NON_EMPTY;
		break;
	default:
		break;
	}
	if (magic != NO_MAGIC)
		placeholder++;

	orig_len = sb->len;
	if (((struct format_commit_context *)context)->flush_type != no_flush)
		consumed = FUNC0(sb, placeholder, context);
	else
		consumed = FUNC1(sb, placeholder, context);
	if (magic == NO_MAGIC)
		return consumed;

	if ((orig_len == sb->len) && magic == DEL_LF_BEFORE_EMPTY) {
		while (sb->len && sb->buf[sb->len - 1] == '\n')
			FUNC3(sb, sb->len - 1);
	} else if (orig_len != sb->len) {
		if (magic == ADD_LF_BEFORE_NON_EMPTY)
			FUNC2(sb, orig_len, "\n", 1);
		else if (magic == ADD_SP_BEFORE_NON_EMPTY)
			FUNC2(sb, orig_len, " ", 1);
	}
	return consumed + 1;
}