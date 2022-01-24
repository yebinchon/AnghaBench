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
struct strbuf {int dummy; } ;
struct ident_split {char* name_begin; char* name_end; char* mail_begin; char* mail_end; char const* date_begin; char const* date_end; } ;
struct date_mode {int dummy; } ;

/* Variables and functions */
 struct date_mode const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISO8601 ; 
 int /*<<< orphan*/  ISO8601_STRICT ; 
 int /*<<< orphan*/  RELATIVE ; 
 int /*<<< orphan*/  RFC2822 ; 
 int /*<<< orphan*/  FUNC1 (char const**,size_t*,char const**,size_t*) ; 
 char* FUNC2 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ident_split*,struct date_mode const*) ; 
 scalar_t__ FUNC4 (struct ident_split*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC7(struct strbuf *sb, char part,
				 const char *msg, int len,
				 const struct date_mode *dmode)
{
	/* currently all placeholders have same length */
	const int placeholder_len = 2;
	struct ident_split s;
	const char *name, *mail;
	size_t maillen, namelen;

	if (FUNC4(&s, msg, len) < 0)
		goto skip;

	name = s.name_begin;
	namelen = s.name_end - s.name_begin;
	mail = s.mail_begin;
	maillen = s.mail_end - s.mail_begin;

	if (part == 'N' || part == 'E' || part == 'L') /* mailmap lookup */
		FUNC1(&mail, &maillen, &name, &namelen);
	if (part == 'n' || part == 'N') {	/* name */
		FUNC5(sb, name, namelen);
		return placeholder_len;
	}
	if (part == 'e' || part == 'E') {	/* email */
		FUNC5(sb, mail, maillen);
		return placeholder_len;
	}
	if (part == 'l' || part == 'L') {	/* local-part */
		const char *at = FUNC2(mail, '@', maillen);
		if (at)
			maillen = at - mail;
		FUNC5(sb, mail, maillen);
		return placeholder_len;
	}

	if (!s.date_begin)
		goto skip;

	if (part == 't') {	/* date, UNIX timestamp */
		FUNC5(sb, s.date_begin, s.date_end - s.date_begin);
		return placeholder_len;
	}

	switch (part) {
	case 'd':	/* date */
		FUNC6(sb, FUNC3(&s, dmode));
		return placeholder_len;
	case 'D':	/* date, RFC2822 style */
		FUNC6(sb, FUNC3(&s, FUNC0(RFC2822)));
		return placeholder_len;
	case 'r':	/* date, relative */
		FUNC6(sb, FUNC3(&s, FUNC0(RELATIVE)));
		return placeholder_len;
	case 'i':	/* date, ISO 8601-like */
		FUNC6(sb, FUNC3(&s, FUNC0(ISO8601)));
		return placeholder_len;
	case 'I':	/* date, ISO 8601 strict */
		FUNC6(sb, FUNC3(&s, FUNC0(ISO8601_STRICT)));
		return placeholder_len;
	}

skip:
	/*
	 * reading from either a bogus commit, or a reflog entry with
	 * %gn, %ge, etc.; 'sb' cannot be updated, but we still need
	 * to compute a valid return value.
	 */
	if (part == 'n' || part == 'e' || part == 't' || part == 'd'
	    || part == 'D' || part == 'r' || part == 'i')
		return placeholder_len;

	return 0; /* unknown placeholder */
}