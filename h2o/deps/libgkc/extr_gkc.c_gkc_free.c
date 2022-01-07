
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gkc_tuple {int dummy; } ;
struct gkc_summary {struct freelist* fl; int alloced; } ;
struct freelist {struct freelist* next; } ;



__attribute__((used)) static void gkc_free(struct gkc_summary *s, struct gkc_tuple *p)
{
    struct freelist *flp = (void *)p;
    s->alloced--;

    flp->next = s->fl;
    s->fl = flp;
}
