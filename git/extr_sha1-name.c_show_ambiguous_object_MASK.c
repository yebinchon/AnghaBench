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
struct tag {scalar_t__ tag; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct pretty_print_context {TYPE_1__ date_mode; int /*<<< orphan*/  member_0; } ;
struct object_id {int dummy; } ;
struct disambiguate_state {int /*<<< orphan*/  repo; int /*<<< orphan*/  cb_data; int /*<<< orphan*/  (* fn ) (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ ) ;} ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATE_SHORT ; 
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int OBJ_COMMIT ; 
 int OBJ_TAG ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ; 
 struct commit* FUNC2 (int /*<<< orphan*/ ,struct object_id const*) ; 
 struct tag* FUNC3 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tag*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(const struct object_id *oid, void *data)
{
	const struct disambiguate_state *ds = data;
	struct strbuf desc = STRBUF_INIT;
	int type;

	if (ds->fn && !ds->fn(ds->repo, oid, ds->cb_data))
		return 0;

	type = FUNC4(ds->repo, oid, NULL);
	if (type == OBJ_COMMIT) {
		struct commit *commit = FUNC2(ds->repo, oid);
		if (commit) {
			struct pretty_print_context pp = {0};
			pp.date_mode.type = DATE_SHORT;
			FUNC1(commit, " %ad - %s", &desc, &pp);
		}
	} else if (type == OBJ_TAG) {
		struct tag *tag = FUNC3(ds->repo, oid);
		if (!FUNC5(tag) && tag->tag)
			FUNC7(&desc, " %s", tag->tag);
	}

	FUNC0("  %s %s%s",
	       FUNC6(ds->repo, oid, DEFAULT_ABBREV),
	       FUNC10(type) ? FUNC10(type) : "unknown type",
	       desc.buf);

	FUNC8(&desc);
	return 0;
}