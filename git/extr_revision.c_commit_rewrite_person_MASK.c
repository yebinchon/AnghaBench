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
struct strbuf {int buf; int /*<<< orphan*/  len; } ;
struct ident_split {char* mail_begin; char* mail_end; char* name_begin; char* name_end; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct string_list*,char const**,size_t*,char const**,size_t*) ; 
 scalar_t__ FUNC1 (struct ident_split*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char* FUNC7 (int,char const*) ; 

__attribute__((used)) static int FUNC8(struct strbuf *buf, const char *what, struct string_list *mailmap)
{
	char *person, *endp;
	size_t len, namelen, maillen;
	const char *name;
	const char *mail;
	struct ident_split ident;

	person = FUNC7(buf->buf, what);
	if (!person)
		return 0;

	person += FUNC6(what);
	endp = FUNC5(person, '\n');
	if (!endp)
		return 0;

	len = endp - person;

	if (FUNC1(&ident, person, len))
		return 0;

	mail = ident.mail_begin;
	maillen = ident.mail_end - ident.mail_begin;
	name = ident.name_begin;
	namelen = ident.name_end - ident.name_begin;

	if (FUNC0(mailmap, &mail, &maillen, &name, &namelen)) {
		struct strbuf namemail = STRBUF_INIT;

		FUNC2(&namemail, "%.*s <%.*s>",
			    (int)namelen, name, (int)maillen, mail);

		FUNC4(buf, ident.name_begin - buf->buf,
			      ident.mail_end - ident.name_begin + 1,
			      namemail.buf, namemail.len);

		FUNC3(&namemail);

		return 1;
	}

	return 0;
}