
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gkc_summary {double epsilon; int head; } ;


 int list_init (int *) ;

void gkc_summary_init(struct gkc_summary *s, double epsilon)
{
    list_init(&s->head);
    s->epsilon = epsilon;
}
