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
struct traversal_context {int /*<<< orphan*/  show_data; int /*<<< orphan*/  (* show_object ) (struct object*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  filter; TYPE_1__* revs; } ;
struct strbuf {size_t len; int /*<<< orphan*/ * buf; } ;
struct object {int flags; int /*<<< orphan*/  oid; } ;
struct blob {struct object object; } ;
typedef  enum list_objects_filter_result { ____Placeholder_list_objects_filter_result } list_objects_filter_result ;
struct TYPE_2__ {int /*<<< orphan*/  repo; scalar_t__ exclude_promisor_objects; int /*<<< orphan*/  blob_objects; } ;

/* Variables and functions */
 int LOFR_DO_SHOW ; 
 int LOFR_MARK_SEEN ; 
 int /*<<< orphan*/  LOFS_BLOB ; 
 int SEEN ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct object*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct traversal_context *ctx,
			 struct blob *blob,
			 struct strbuf *path,
			 const char *name)
{
	struct object *obj = &blob->object;
	size_t pathlen;
	enum list_objects_filter_result r;

	if (!ctx->revs->blob_objects)
		return;
	if (!obj)
		FUNC0("bad blob object");
	if (obj->flags & (UNINTERESTING | SEEN))
		return;

	/*
	 * Pre-filter known-missing objects when explicitly requested.
	 * Otherwise, a missing object error message may be reported
	 * later (depending on other filtering criteria).
	 *
	 * Note that this "--exclude-promisor-objects" pre-filtering
	 * may cause the actual filter to report an incomplete list
	 * of missing objects.
	 */
	if (ctx->revs->exclude_promisor_objects &&
	    !FUNC1(&obj->oid) &&
	    FUNC2(&obj->oid))
		return;

	pathlen = path->len;
	FUNC4(path, name);
	r = FUNC3(ctx->revs->repo,
					       LOFS_BLOB, obj,
					       path->buf, &path->buf[pathlen],
					       ctx->filter);
	if (r & LOFR_MARK_SEEN)
		obj->flags |= SEEN;
	if (r & LOFR_DO_SHOW)
		ctx->show_object(obj, path->buf, ctx->show_data);
	FUNC5(path, pathlen);
}