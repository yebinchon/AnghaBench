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
struct spanhash_top {int alloc_log2; int /*<<< orphan*/  free; struct spanhash* data; } ;
struct spanhash {int hashval; scalar_t__ cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct spanhash_top*) ; 
 int /*<<< orphan*/  FUNC2 (struct spanhash*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct spanhash_top* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct spanhash_top *FUNC6(struct spanhash_top *orig)
{
	struct spanhash_top *new_spanhash;
	int i;
	int osz = 1 << orig->alloc_log2;
	int sz = osz << 1;

	new_spanhash = FUNC5(FUNC3(sizeof(*orig),
			     FUNC4(sizeof(struct spanhash), sz)));
	new_spanhash->alloc_log2 = orig->alloc_log2 + 1;
	new_spanhash->free = FUNC0(new_spanhash->alloc_log2);
	FUNC2(new_spanhash->data, 0, sizeof(struct spanhash) * sz);
	for (i = 0; i < osz; i++) {
		struct spanhash *o = &(orig->data[i]);
		int bucket;
		if (!o->cnt)
			continue;
		bucket = o->hashval & (sz - 1);
		while (1) {
			struct spanhash *h = &(new_spanhash->data[bucket++]);
			if (!h->cnt) {
				h->hashval = o->hashval;
				h->cnt = o->cnt;
				new_spanhash->free--;
				break;
			}
			if (sz <= bucket)
				bucket = 0;
		}
	}
	FUNC1(orig);
	return new_spanhash;
}