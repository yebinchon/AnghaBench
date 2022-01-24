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
typedef  scalar_t__ uint64_t ;
struct list {struct list* prev; } ;
struct gkc_tuple {int delta; int g; } ;
struct gkc_summary {int epsilon; int nr_elems; struct list head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gkc_summary*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gkc_summary*,struct gkc_tuple*) ; 
 int /*<<< orphan*/  FUNC2 (struct list*) ; 
 struct gkc_tuple* FUNC3 (struct list*) ; 

__attribute__((used)) static void FUNC4(struct gkc_summary *s)
{
    int max_compress;
    struct list *cur, *prev;
    struct gkc_tuple *tcur, *tprev;
    uint64_t bi, b_plus_1;

    max_compress = 2 * s->epsilon * s->nr_elems;
    if (s->nr_elems < 2) {
        return;
    }

    prev = s->head.prev;
    cur = prev->prev;

    while (cur != &s->head) {
        tcur = FUNC3(cur);
        tprev = FUNC3(prev);

        b_plus_1 = FUNC0(s, tprev->delta);
        bi = FUNC0(s, tcur->delta);

        if (bi <= b_plus_1 && ((tcur->g + tprev->g + tprev->delta) <= max_compress)) {
            tprev->g += tcur->g;
            FUNC2(cur);
            FUNC1(s, tcur);
            cur = prev->prev;
            continue;
        }
        prev = cur;
        cur = cur->prev;
    }
}