#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct wt_status_state {int detached_at; struct object_id detached_oid; void* detached_from; } ;
struct repository {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct grab_1st_switch_cbdata {TYPE_2__ buf; struct object_id noid; } ;
struct TYPE_4__ {struct object_id oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*,char**) ; 
 char const* FUNC1 (struct object_id*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,struct grab_1st_switch_cbdata*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct object_id*) ; 
 int /*<<< orphan*/  grab_1st_switch ; 
 struct commit* FUNC5 (struct repository*,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id*,struct object_id*) ; 
 scalar_t__ FUNC7 (struct object_id*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 void* FUNC11 (char const*) ; 

__attribute__((used)) static void FUNC12(struct repository *r,
					struct wt_status_state *state)
{
	struct grab_1st_switch_cbdata cb;
	struct commit *commit;
	struct object_id oid;
	char *ref = NULL;

	FUNC9(&cb.buf, 0);
	if (FUNC2("HEAD", grab_1st_switch, &cb) <= 0) {
		FUNC10(&cb.buf);
		return;
	}

	if (FUNC0(cb.buf.buf, cb.buf.len, &oid, &ref) == 1 &&
	    /* sha1 is a commit? match without further lookup */
	    (FUNC7(&cb.noid, &oid) ||
	     /* perhaps sha1 is a tag, try to dereference to a commit */
	     ((commit = FUNC5(r, &oid, 1)) != NULL &&
	      FUNC7(&cb.noid, &commit->object.oid)))) {
		const char *from = ref;
		if (!FUNC8(from, "refs/tags/", &from))
			FUNC8(from, "refs/remotes/", &from);
		state->detached_from = FUNC11(from);
	} else
		state->detached_from =
			FUNC11(FUNC1(&cb.noid, DEFAULT_ABBREV));
	FUNC6(&state->detached_oid, &cb.noid);
	state->detached_at = !FUNC4("HEAD", &oid) &&
			     FUNC7(&oid, &state->detached_oid);

	FUNC3(ref);
	FUNC10(&cb.buf);
}