#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pack_chain_elem {size_t size; scalar_t__ offset; scalar_t__ base_key; scalar_t__ type; } ;
struct git_pack_file {int /*<<< orphan*/  mwf; int /*<<< orphan*/  bases; } ;
typedef  int /*<<< orphan*/  git_pack_cache_entry ;
typedef  scalar_t__ git_off_t ;
typedef  scalar_t__ git_object_t ;
typedef  int /*<<< orphan*/  git_mwindow ;
struct TYPE_8__ {size_t size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_dependency_chain ;

/* Variables and functions */
 TYPE_1__ GIT_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 scalar_t__ GIT_OBJECT_OFS_DELTA ; 
 scalar_t__ GIT_OBJECT_REF_DELTA ; 
 size_t SMALL_STACK_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (struct git_pack_file*,int /*<<< orphan*/ **,scalar_t__*,scalar_t__,scalar_t__) ; 
 struct pack_chain_elem* FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int FUNC7 (size_t*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct pack_chain_elem*,size_t) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(git_dependency_chain *chain_out,
				 git_pack_cache_entry **cached_out, git_off_t *cached_off,
				 struct pack_chain_elem *small_stack, size_t *stack_sz,
				 struct git_pack_file *p, git_off_t obj_offset)
{
	git_dependency_chain chain = GIT_ARRAY_INIT;
	git_mwindow *w_curs = NULL;
	git_off_t curpos = obj_offset, base_offset;
	int error = 0, use_heap = 0;
	size_t size, elem_pos;
	git_object_t type;

	elem_pos = 0;
	while (true) {
		struct pack_chain_elem *elem;
		git_pack_cache_entry *cached = NULL;

		/* if we have a base cached, we can stop here instead */
		if ((cached = FUNC1(&p->bases, obj_offset)) != NULL) {
			*cached_out = cached;
			*cached_off = obj_offset;
			break;
		}

		/* if we run out of space on the small stack, use the array */
		if (elem_pos == SMALL_STACK_SIZE) {
			FUNC5(chain, elem_pos);
			FUNC0(chain);
			FUNC8(chain.ptr, small_stack, elem_pos * sizeof(struct pack_chain_elem));
			chain.size = elem_pos;
			use_heap = 1;
		}

		curpos = obj_offset;
		if (!use_heap) {
			elem = &small_stack[elem_pos];
		} else {
			elem = FUNC3(chain);
			if (!elem) {
				error = -1;
				goto on_error;
			}
		}

		elem->base_key = obj_offset;

		error = FUNC7(&size, &type, &p->mwf, &w_curs, &curpos);

		if (error < 0)
			goto on_error;

		elem->offset = curpos;
		elem->size = size;
		elem->type = type;
		elem->base_key = obj_offset;

		if (type != GIT_OBJECT_OFS_DELTA && type != GIT_OBJECT_REF_DELTA)
			break;

		base_offset = FUNC2(p, &w_curs, &curpos, type, obj_offset);
		FUNC6(&w_curs);

		if (base_offset == 0) {
			error = FUNC9("delta offset is zero");
			goto on_error;
		}
		if (base_offset < 0) { /* must actually be an error code */
			error = (int)base_offset;
			goto on_error;
		}

		/* we need to pass the pos *after* the delta-base bit */
		elem->offset = curpos;

		/* go through the loop again, but with the new object */
		obj_offset = base_offset;
		elem_pos++;
	}


	*stack_sz = elem_pos + 1;
	*chain_out = chain;
	return error;

on_error:
	FUNC4(chain);
	return error;
}