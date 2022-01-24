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
struct ref_store {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char** ref_rev_parse_rules ; 
 scalar_t__ FUNC2 (struct ref_store*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int FUNC9 (char*) ; 
 char** FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,size_t,char*,int,char*) ; 
 char* FUNC12 (char const*) ; 

char *FUNC13(struct ref_store *refs,
				   const char *refname, int strict)
{
	int i;
	static char **scanf_fmts;
	static int nr_rules;
	char *short_name;
	struct strbuf resolved_buf = STRBUF_INIT;

	if (!nr_rules) {
		/*
		 * Pre-generate scanf formats from ref_rev_parse_rules[].
		 * Generate a format suitable for scanf from a
		 * ref_rev_parse_rules rule by interpolating "%s" at the
		 * location of the "%.*s".
		 */
		size_t total_len = 0;
		size_t offset = 0;

		/* the rule list is NULL terminated, count them first */
		for (nr_rules = 0; ref_rev_parse_rules[nr_rules]; nr_rules++)
			/* -2 for strlen("%.*s") - strlen("%s"); +1 for NUL */
			total_len += FUNC9(ref_rev_parse_rules[nr_rules]) - 2 + 1;

		scanf_fmts = FUNC10(FUNC4(FUNC5(sizeof(char *), nr_rules), total_len));

		offset = 0;
		for (i = 0; i < nr_rules; i++) {
			FUNC0(offset < total_len);
			scanf_fmts[i] = (char *)&scanf_fmts[nr_rules] + offset;
			offset += FUNC11(scanf_fmts[i], total_len - offset,
					    ref_rev_parse_rules[i], 2, "%s") + 1;
		}
	}

	/* bail out if there are no rules */
	if (!nr_rules)
		return FUNC12(refname);

	/* buffer for scanf result, at most refname must fit */
	short_name = FUNC12(refname);

	/* skip first rule, it will always match */
	for (i = nr_rules - 1; i > 0 ; --i) {
		int j;
		int rules_to_fail = i;
		int short_name_len;

		if (1 != FUNC3(refname, scanf_fmts[i], short_name))
			continue;

		short_name_len = FUNC9(short_name);

		/*
		 * in strict mode, all (except the matched one) rules
		 * must fail to resolve to a valid non-ambiguous ref
		 */
		if (strict)
			rules_to_fail = nr_rules;

		/*
		 * check if the short name resolves to a valid ref,
		 * but use only rules prior to the matched one
		 */
		for (j = 0; j < rules_to_fail; j++) {
			const char *rule = ref_rev_parse_rules[j];

			/* skip matched rule */
			if (i == j)
				continue;

			/*
			 * the short name is ambiguous, if it resolves
			 * (with this previous rule) to a valid ref
			 * read_ref() returns 0 on success
			 */
			FUNC8(&resolved_buf);
			FUNC6(&resolved_buf, rule,
				    short_name_len, short_name);
			if (FUNC2(refs, resolved_buf.buf))
				break;
		}

		/*
		 * short name is non-ambiguous if all previous rules
		 * haven't resolved to a valid ref
		 */
		if (j == rules_to_fail) {
			FUNC7(&resolved_buf);
			return short_name;
		}
	}

	FUNC7(&resolved_buf);
	FUNC1(short_name);
	return FUNC12(refname);
}