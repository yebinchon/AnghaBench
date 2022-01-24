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
struct repository {int dummy; } ;
struct oidset {int dummy; } ;
struct object {int type; int flags; int /*<<< orphan*/  oid; } ;
struct filter_blobs_limit_data {unsigned long max_bytes; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  enum list_objects_filter_situation { ____Placeholder_list_objects_filter_situation } list_objects_filter_situation ;
typedef  enum list_objects_filter_result { ____Placeholder_list_objects_filter_result } list_objects_filter_result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int LOFR_DO_SHOW ; 
 int LOFR_MARK_SEEN ; 
 int LOFR_ZERO ; 
#define  LOFS_BEGIN_TREE 130 
#define  LOFS_BLOB 129 
#define  LOFS_END_TREE 128 
 int OBJ_BLOB ; 
 int OBJ_TREE ; 
 int SEEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct repository*,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct oidset*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct oidset*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum list_objects_filter_result FUNC5(
	struct repository *r,
	enum list_objects_filter_situation filter_situation,
	struct object *obj,
	const char *pathname,
	const char *filename,
	struct oidset *omits,
	void *filter_data_)
{
	struct filter_blobs_limit_data *filter_data = filter_data_;
	unsigned long object_length;
	enum object_type t;

	switch (filter_situation) {
	default:
		FUNC0("unknown filter_situation: %d", filter_situation);

	case LOFS_BEGIN_TREE:
		FUNC1(obj->type == OBJ_TREE);
		/* always include all tree objects */
		return LOFR_MARK_SEEN | LOFR_DO_SHOW;

	case LOFS_END_TREE:
		FUNC1(obj->type == OBJ_TREE);
		return LOFR_ZERO;

	case LOFS_BLOB:
		FUNC1(obj->type == OBJ_BLOB);
		FUNC1((obj->flags & SEEN) == 0);

		t = FUNC2(r, &obj->oid, &object_length);
		if (t != OBJ_BLOB) { /* probably OBJ_NONE */
			/*
			 * We DO NOT have the blob locally, so we cannot
			 * apply the size filter criteria.  Be conservative
			 * and force show it (and let the caller deal with
			 * the ambiguity).
			 */
			goto include_it;
		}

		if (object_length < filter_data->max_bytes)
			goto include_it;

		if (omits)
			FUNC3(omits, &obj->oid);
		return LOFR_MARK_SEEN; /* but not LOFR_DO_SHOW (hard omit) */
	}

include_it:
	if (omits)
		FUNC4(omits, &obj->oid);
	return LOFR_MARK_SEEN | LOFR_DO_SHOW;
}