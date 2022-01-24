#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree {int dummy; } ;
struct traversal_context {TYPE_1__* revs; int /*<<< orphan*/  show_data; int /*<<< orphan*/  (* show_object ) (struct object*,char const*,int /*<<< orphan*/ ) ;} ;
struct strbuf {scalar_t__ len; } ;
struct object_array_entry {char* name; char* path; struct object* item; } ;
struct object {int flags; scalar_t__ type; int /*<<< orphan*/  oid; } ;
struct blob {int dummy; } ;
struct TYPE_4__ {int nr; struct object_array_entry* objects; } ;
struct TYPE_3__ {TYPE_2__ pending; } ;

/* Variables and functions */
 scalar_t__ OBJ_BLOB ; 
 scalar_t__ OBJ_TAG ; 
 scalar_t__ OBJ_TREE ; 
 int SEEN ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct traversal_context*,struct blob*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct traversal_context*,struct tree*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct object*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct traversal_context *ctx,
				     struct strbuf *base)
{
	int i;

	FUNC0(base->len == 0);

	for (i = 0; i < ctx->revs->pending.nr; i++) {
		struct object_array_entry *pending = ctx->revs->pending.objects + i;
		struct object *obj = pending->item;
		const char *name = pending->name;
		const char *path = pending->path;
		if (obj->flags & (UNINTERESTING | SEEN))
			continue;
		if (obj->type == OBJ_TAG) {
			obj->flags |= SEEN;
			ctx->show_object(obj, name, ctx->show_data);
			continue;
		}
		if (!path)
			path = "";
		if (obj->type == OBJ_TREE) {
			FUNC5(ctx, (struct tree *)obj, base, path);
			continue;
		}
		if (obj->type == OBJ_BLOB) {
			FUNC4(ctx, (struct blob *)obj, base, path);
			continue;
		}
		FUNC1("unknown pending object %s (%s)",
		    FUNC3(&obj->oid), name);
	}
	FUNC2(&ctx->revs->pending);
}