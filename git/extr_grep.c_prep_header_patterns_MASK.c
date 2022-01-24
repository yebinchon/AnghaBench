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
struct grep_pat {scalar_t__ token; int field; struct grep_pat* next; } ;
struct grep_opt {struct grep_pat* header_list; } ;
struct grep_expr {int dummy; } ;
typedef  enum grep_header_field { ____Placeholder_grep_header_field } grep_header_field ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int GREP_HEADER_FIELD_MAX ; 
 int GREP_HEADER_FIELD_MIN ; 
 scalar_t__ GREP_PATTERN_HEAD ; 
 struct grep_expr* FUNC1 (struct grep_pat**) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_pat*,struct grep_opt*) ; 
 struct grep_expr* FUNC3 (struct grep_expr*,struct grep_expr*) ; 
 struct grep_expr* FUNC4 () ; 

__attribute__((used)) static struct grep_expr *FUNC5(struct grep_opt *opt)
{
	struct grep_pat *p;
	struct grep_expr *header_expr;
	struct grep_expr *(header_group[GREP_HEADER_FIELD_MAX]);
	enum grep_header_field fld;

	if (!opt->header_list)
		return NULL;

	for (p = opt->header_list; p; p = p->next) {
		if (p->token != GREP_PATTERN_HEAD)
			FUNC0("a non-header pattern in grep header list.");
		if (p->field < GREP_HEADER_FIELD_MIN ||
		    GREP_HEADER_FIELD_MAX <= p->field)
			FUNC0("unknown header field %d", p->field);
		FUNC2(p, opt);
	}

	for (fld = 0; fld < GREP_HEADER_FIELD_MAX; fld++)
		header_group[fld] = NULL;

	for (p = opt->header_list; p; p = p->next) {
		struct grep_expr *h;
		struct grep_pat *pp = p;

		h = FUNC1(&pp);
		if (!h || pp != p->next)
			FUNC0("malformed header expr");
		if (!header_group[p->field]) {
			header_group[p->field] = h;
			continue;
		}
		header_group[p->field] = FUNC3(h, header_group[p->field]);
	}

	header_expr = NULL;

	for (fld = 0; fld < GREP_HEADER_FIELD_MAX; fld++) {
		if (!header_group[fld])
			continue;
		if (!header_expr)
			header_expr = FUNC4();
		header_expr = FUNC3(header_group[fld], header_expr);
	}
	return header_expr;
}