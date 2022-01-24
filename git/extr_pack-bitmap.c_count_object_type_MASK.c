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
typedef  size_t uint32_t ;
struct ewah_iterator {int dummy; } ;
struct eindex {size_t count; TYPE_1__** objects; } ;
struct bitmap_index {TYPE_2__* pack; int /*<<< orphan*/  tags; int /*<<< orphan*/  blobs; int /*<<< orphan*/  trees; int /*<<< orphan*/  commits; struct eindex ext_index; struct bitmap* result; } ;
struct bitmap {size_t word_alloc; int* words; } ;
typedef  int eword_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {scalar_t__ num_objects; } ;
struct TYPE_3__ {int type; } ;

/* Variables and functions */
#define  OBJ_BLOB 131 
#define  OBJ_COMMIT 130 
#define  OBJ_TAG 129 
#define  OBJ_TREE 128 
 scalar_t__ FUNC0 (struct bitmap*,scalar_t__) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ewah_iterator*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*,struct ewah_iterator*) ; 

__attribute__((used)) static uint32_t FUNC4(struct bitmap_index *bitmap_git,
				  enum object_type type)
{
	struct bitmap *objects = bitmap_git->result;
	struct eindex *eindex = &bitmap_git->ext_index;

	uint32_t i = 0, count = 0;
	struct ewah_iterator it;
	eword_t filter;

	switch (type) {
	case OBJ_COMMIT:
		FUNC2(&it, bitmap_git->commits);
		break;

	case OBJ_TREE:
		FUNC2(&it, bitmap_git->trees);
		break;

	case OBJ_BLOB:
		FUNC2(&it, bitmap_git->blobs);
		break;

	case OBJ_TAG:
		FUNC2(&it, bitmap_git->tags);
		break;

	default:
		return 0;
	}

	while (i < objects->word_alloc && FUNC3(&filter, &it)) {
		eword_t word = objects->words[i++] & filter;
		count += FUNC1(word);
	}

	for (i = 0; i < eindex->count; ++i) {
		if (eindex->objects[i]->type == type &&
			FUNC0(objects, bitmap_git->pack->num_objects + i))
			count++;
	}

	return count;
}