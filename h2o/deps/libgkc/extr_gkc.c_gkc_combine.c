
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {struct list* next; } ;
struct gkc_tuple {scalar_t__ value; scalar_t__ g; int node; int delta; } ;
struct gkc_summary {scalar_t__ epsilon; int alloced; int max_alloced; int nr_elems; struct list head; } ;


 struct gkc_tuple* gkc_alloc (struct gkc_summary*) ;
 int gkc_compress (struct gkc_summary*) ;
 struct gkc_summary* gkc_summary_alloc (scalar_t__) ;
 int list_add_tail (struct list*,int *) ;
 struct gkc_tuple* list_to_tuple (struct list*) ;

struct gkc_summary *gkc_combine(struct gkc_summary *s1, struct gkc_summary *s2)
{
    struct gkc_summary *snew;
    struct list *cur1, *cur2;
    struct gkc_tuple *tcur1, *tcur2, *tnew;

    if (s1->epsilon != s2->epsilon) {
        return ((void*)0);
    }
    snew = gkc_summary_alloc(s1->epsilon);

    cur1 = s1->head.next;
    cur2 = s2->head.next;
    while (cur1 != &s1->head && cur2 != &s2->head) {
        tcur1 = list_to_tuple(cur1);
        tcur2 = list_to_tuple(cur2);

        tnew = gkc_alloc(snew);
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
        list_add_tail(&snew->head, &tnew->node);
        snew->nr_elems += tnew->g;
    }
    while (cur1 != &s1->head) {
        tcur1 = list_to_tuple(cur1);

        tnew = gkc_alloc(snew);
        tnew->value = tcur1->value;
        tnew->g = tcur1->g;
        tnew->delta = tcur1->delta;
        list_add_tail(&snew->head, &tnew->node);
        snew->nr_elems += tnew->g;
        cur1 = cur1->next;
    }
    while (cur2 != &s2->head) {
        tcur2 = list_to_tuple(cur2);

        tnew = gkc_alloc(snew);
        tnew->value = tcur2->value;
        tnew->g = tcur2->g;
        tnew->delta = tcur2->delta;
        list_add_tail(&snew->head, &tnew->node);
        snew->nr_elems += tnew->g;
        cur2 = cur2->next;
    }
    snew->max_alloced = snew->alloced;
    gkc_compress(snew);

    return snew;
}
