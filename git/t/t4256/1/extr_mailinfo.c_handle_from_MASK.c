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
struct strbuf {int len; char* buf; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct mailinfo {TYPE_1__ email; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct strbuf*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (struct mailinfo*,struct strbuf const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,struct strbuf const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 char* FUNC12 (char*,char) ; 
 size_t FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 

__attribute__((used)) static void FUNC15(struct mailinfo *mi, const struct strbuf *from)
{
	char *at;
	size_t el;
	struct strbuf f;

	FUNC6(&f, from->len);
	FUNC5(&f, from);

	FUNC14(&f);

	at = FUNC12(f.buf, '@');
	if (!at) {
		FUNC3(mi, from);
		goto out;
	}

	/*
	 * If we already have one email, don't take any confusing lines
	 */
	if (mi->email.len && FUNC12(at + 1, '@'))
		goto out;

	/* Pick up the string around '@', possibly delimited with <>
	 * pair; that is the email part.
	 */
	while (at > f.buf) {
		char c = at[-1];
		if (FUNC2(c))
			break;
		if (c == '<') {
			at[-1] = ' ';
			break;
		}
		at--;
	}
	el = FUNC13(at, " \n\t\r\v\f>");
	FUNC9(&mi->email);
	FUNC4(&mi->email, at, el);
	FUNC8(&f, at - f.buf, el + (at[el] ? 1 : 0));

	/* The remainder is name.  It could be
	 *
	 * - "John Doe <john.doe@xz>"			(a), or
	 * - "john.doe@xz (John Doe)"			(b), or
	 * - "John (zzz) Doe <john.doe@xz> (Comment)"	(c)
	 *
	 * but we have removed the email part, so
	 *
	 * - remove extra spaces which could stay after email (case 'c'), and
	 * - trim from both ends, possibly removing the () pair at the end
	 *   (cases 'a' and 'b').
	 */
	FUNC0(&f);
	FUNC11(&f);
	if (f.buf[0] == '(' && f.len && f.buf[f.len - 1] == ')') {
		FUNC8(&f, 0, 1);
		FUNC10(&f, f.len - 1);
	}

	FUNC1(&mi->name, &f, &mi->email);
out:
	FUNC7(&f);
}