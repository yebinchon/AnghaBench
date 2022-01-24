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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_format {int dummy; } ;

/* Variables and functions */
 struct ref_format REF_FORMAT_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ref_format*,char const*,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const char *atom)
{
	/*
	 * This parses an atom using a dummy ref_format, since we don't
	 * actually care about the formatting details.
	 */
	struct ref_format dummy = REF_FORMAT_INIT;
	const char *end = atom + FUNC3(atom);
	struct strbuf err = STRBUF_INIT;
	int res = FUNC1(&dummy, atom, end, &err);
	if (res < 0)
		FUNC0("%s", err.buf);
	FUNC2(&err);
	return res;
}