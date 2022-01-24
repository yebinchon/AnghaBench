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
typedef  unsigned int uint32_t ;
struct paint_info {int /*<<< orphan*/  ref_bitmap; int /*<<< orphan*/  nr_bits; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; int flags; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;

/* Variables and functions */
 int BOTTOM ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ OBJ_COMMIT ; 
 int SEEN ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*) ; 
 struct object* FUNC4 (unsigned int) ; 
 unsigned int FUNC5 () ; 
 struct commit* FUNC6 (int /*<<< orphan*/ ,struct object_id const*,int) ; 
 scalar_t__ FUNC7 (unsigned int*,unsigned int*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int*,unsigned int*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 unsigned int* FUNC11 (struct paint_info*) ; 
 scalar_t__ FUNC12 (struct commit*) ; 
 struct commit* FUNC13 (struct commit_list**) ; 
 unsigned int** FUNC14 (int /*<<< orphan*/ *,struct commit*) ; 
 size_t FUNC15 (int,int) ; 
 int /*<<< orphan*/  the_repository ; 
 unsigned int* FUNC16 (size_t) ; 

__attribute__((used)) static void FUNC17(struct paint_info *info, const struct object_id *oid,
		       unsigned int id)
{
	unsigned int i, nr;
	struct commit_list *head = NULL;
	int bitmap_nr = FUNC0(info->nr_bits, 32);
	size_t bitmap_size = FUNC15(sizeof(uint32_t), bitmap_nr);
	struct commit *c = FUNC6(the_repository, oid,
							  1);
	uint32_t *tmp; /* to be freed before return */
	uint32_t *bitmap;

	if (!c)
		return;

	tmp = FUNC16(bitmap_size);
	bitmap = FUNC11(info);
	FUNC9(bitmap, 0, bitmap_size);
	bitmap[id / 32] |= (1U << (id % 32));
	FUNC1(c, &head);
	while (head) {
		struct commit_list *p;
		struct commit *c = FUNC13(&head);
		uint32_t **refs = FUNC14(&info->ref_bitmap, c);

		/* XXX check "UNINTERESTING" from pack bitmaps if available */
		if (c->object.flags & (SEEN | UNINTERESTING))
			continue;
		else
			c->object.flags |= SEEN;

		if (*refs == NULL)
			*refs = bitmap;
		else {
			FUNC8(tmp, *refs, bitmap_size);
			for (i = 0; i < bitmap_nr; i++)
				tmp[i] |= bitmap[i];
			if (FUNC7(tmp, *refs, bitmap_size)) {
				*refs = FUNC11(info);
				FUNC8(*refs, tmp, bitmap_size);
			}
		}

		if (c->object.flags & BOTTOM)
			continue;

		if (FUNC12(c))
			FUNC2("unable to parse commit %s",
			    FUNC10(&c->object.oid));

		for (p = c->parents; p; p = p->next) {
			if (p->item->object.flags & SEEN)
				continue;
			FUNC1(p->item, &head);
		}
	}

	nr = FUNC5();
	for (i = 0; i < nr; i++) {
		struct object *o = FUNC4(i);
		if (o && o->type == OBJ_COMMIT)
			o->flags &= ~SEEN;
	}

	FUNC3(tmp);
}