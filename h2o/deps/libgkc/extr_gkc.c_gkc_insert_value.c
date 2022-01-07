
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {struct list* next; } ;
struct gkc_tuple {double value; int g; int delta; int node; } ;
struct gkc_summary {int nr_elems; int epsilon; struct list head; } ;


 struct gkc_tuple* gkc_alloc (struct gkc_summary*) ;
 int gkc_compress (struct gkc_summary*) ;
 int list_add (struct list*,int *) ;
 int list_add_tail (struct list*,int *) ;
 scalar_t__ list_empty (struct list*) ;
 int list_init (int *) ;
 struct gkc_tuple* list_to_tuple (struct list*) ;
 int memset (struct gkc_tuple*,int ,int) ;

void gkc_insert_value(struct gkc_summary *s, double value)
{
    struct list *cur = ((void*)0);
    struct gkc_tuple *new, *tcur, *tnext = ((void*)0);

    new = gkc_alloc(s);
    memset(new, 0, sizeof(*new));
    new->value = value;
    new->g = 1;
    list_init(&new->node);


    s->nr_elems++;



    if (list_empty(&s->head)) {
        list_add(&s->head, &new->node);
        return;
    }

    cur = s->head.next;
    tcur = list_to_tuple(cur);

    if (tcur->value > new->value) {
        list_add(&s->head, &new->node);
        goto out;
    }

    double gi = 0;
    while (cur->next != &s->head) {
        tnext = list_to_tuple(cur->next);
        tcur = list_to_tuple(cur);

        gi += tcur->g;
        if (tcur->value <= new->value && new->value < tnext->value) {

            new->delta = tcur->g + tcur->delta - 1;
            list_add(cur, &new->node);
            goto out;
        }
        cur = cur->next;
    }

    list_add_tail(&s->head, &new->node);
out:
    if (s->nr_elems % (int)(1/(2*s->epsilon))) {
        gkc_compress(s);
    }
}
