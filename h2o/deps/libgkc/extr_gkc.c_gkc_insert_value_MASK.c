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
struct gkc_tuple {double value; int g; int delta; int /*<<< orphan*/  node; } ;
struct gkc_summary {int nr_elems; int epsilon; struct list head; } ;

/* Variables and functions */
 struct gkc_tuple* FUNC0 (struct gkc_summary*) ; 
 int /*<<< orphan*/  FUNC1 (struct gkc_summary*) ; 
 int /*<<< orphan*/  FUNC2 (struct list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct list*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct list*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct gkc_tuple* FUNC6 (struct list*) ; 
 int /*<<< orphan*/  FUNC7 (struct gkc_tuple*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct gkc_summary *s, double value)
{
    struct list *cur = NULL;
    struct gkc_tuple *new, *tcur, *tnext = NULL;

    new = FUNC0(s);
    FUNC7(new, 0, sizeof(*new));
    new->value = value;
    new->g = 1;
    FUNC5(&new->node);


    s->nr_elems++;


    /* first insert */
    if (FUNC4(&s->head)) {
        FUNC2(&s->head, &new->node);
        return;
    }

    cur = s->head.next;
    tcur = FUNC6(cur);
    /* v < v0, new min */
    if (tcur->value > new->value) {
        FUNC2(&s->head, &new->node);
        goto out;
    }

    double gi = 0;
    while (cur->next != &s->head) {
        tnext = FUNC6(cur->next);
        tcur = FUNC6(cur);

        gi += tcur->g;
        if (tcur->value <= new->value && new->value < tnext->value) {
            /*     INSERT "(v, 1, Δ)" into S between vi and vi+1; */
            new->delta = tcur->g + tcur->delta - 1;
            FUNC2(cur, &new->node);
            goto out;
        }
        cur = cur->next;
    }
    /* v > vs-1, new max */
    FUNC3(&s->head, &new->node);
out:
    if (s->nr_elems % (int)(1/(2*s->epsilon))) {
        FUNC1(s);
    }
}