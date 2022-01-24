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
struct object_id {int dummy; } ;
struct diff_options {int dummy; } ;
struct combine_diff_path {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct combine_diff_path* FUNC1 (struct combine_diff_path*,struct object_id const*,struct object_id const**,int,struct strbuf*,struct diff_options*) ; 

struct combine_diff_path *FUNC2(
	struct combine_diff_path *p, const struct object_id *oid,
	const struct object_id **parents_oid, int nparent,
	struct strbuf *base, struct diff_options *opt)
{
	p = FUNC1(p, oid, parents_oid, nparent, base, opt);

	/*
	 * free pre-allocated last element, if any
	 * (see path_appendnew() for details about why)
	 */
	FUNC0(p->next);

	return p;
}