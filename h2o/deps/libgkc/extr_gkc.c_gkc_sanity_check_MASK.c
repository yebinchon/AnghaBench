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
struct list {struct list* next; } ;
struct gkc_tuple {scalar_t__ g; int delta; } ;
struct gkc_summary {int nr_elems; int epsilon; scalar_t__ alloced; struct list head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct gkc_tuple* FUNC1 (struct list*) ; 

void FUNC2(struct gkc_summary *s)
{
    uint64_t nr_elems, nr_alloced;
    struct list *cur;
    struct gkc_tuple *tcur;

    nr_elems = 0;
    nr_alloced = 0;
    cur = s->head.next;
    while (cur != &s->head) {
        tcur = FUNC1(cur);
        cur = cur->next;
        nr_elems += tcur->g;
        nr_alloced++;
        if (s->nr_elems > (1/s->epsilon)) {
            /* there must be enough observations for this to become true */
            FUNC0(tcur->g + tcur->delta <= (s->nr_elems * s->epsilon * 2));
        }
        FUNC0(nr_alloced <= s->alloced);
    }
    FUNC0(nr_elems == s->nr_elems);
    FUNC0(nr_alloced == s->alloced);
}