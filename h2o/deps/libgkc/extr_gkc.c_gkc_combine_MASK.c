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
struct list {struct list* next; } ;
struct gkc_tuple {scalar_t__ value; scalar_t__ g; int /*<<< orphan*/  node; int /*<<< orphan*/  delta; } ;
struct gkc_summary {scalar_t__ epsilon; int /*<<< orphan*/  alloced; int /*<<< orphan*/  max_alloced; int /*<<< orphan*/  nr_elems; struct list head; } ;

/* Variables and functions */
 struct gkc_tuple* FUNC0 (struct gkc_summary*) ; 
 int /*<<< orphan*/  FUNC1 (struct gkc_summary*) ; 
 struct gkc_summary* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct list*,int /*<<< orphan*/ *) ; 
 struct gkc_tuple* FUNC4 (struct list*) ; 

struct gkc_summary *FUNC5(struct gkc_summary *s1, struct gkc_summary *s2)
{
    struct gkc_summary *snew;
    struct list *cur1, *cur2;
    struct gkc_tuple *tcur1, *tcur2, *tnew;

    if (s1->epsilon != s2->epsilon) {
        return NULL;
    }
    snew = FUNC2(s1->epsilon);

    cur1 = s1->head.next;
    cur2 = s2->head.next;
    while (cur1 != &s1->head && cur2 != &s2->head) {
        tcur1 = FUNC4(cur1);
        tcur2 = FUNC4(cur2);

        tnew = FUNC0(snew);
        if (tcur1->value < tcur2->value) {
            tnew->value = tcur1->value;
            tnew->g = tcur1->g;
            tnew->delta = tcur1->delta;
            cur1 = cur1->next;
        } else {
            tnew->value = tcur2->value;
            tnew->g = tcur2->g;
            tnew->delta = tcur2->delta;
            cur2 = cur2->next;
        }
        FUNC3(&snew->head, &tnew->node);
        snew->nr_elems += tnew->g;
    }
    while (cur1 != &s1->head) {
        tcur1 = FUNC4(cur1);

        tnew = FUNC0(snew);
        tnew->value = tcur1->value;
        tnew->g = tcur1->g;
        tnew->delta = tcur1->delta;
        FUNC3(&snew->head, &tnew->node);
        snew->nr_elems += tnew->g;
        cur1 = cur1->next;
    }
    while (cur2 != &s2->head) {
        tcur2 = FUNC4(cur2);

        tnew = FUNC0(snew);
        tnew->value = tcur2->value;
        tnew->g = tcur2->g;
        tnew->delta = tcur2->delta;
        FUNC3(&snew->head, &tnew->node);
        snew->nr_elems += tnew->g;
        cur2 = cur2->next;
    }
    snew->max_alloced = snew->alloced;
    FUNC1(snew);

    return snew;
}