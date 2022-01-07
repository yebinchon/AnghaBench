
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gkc_summary {int dummy; } ;


 int fprintf (int ,char*,double,double) ;
 double gkc_query (struct gkc_summary*,double) ;
 int stderr ;

void print_query(struct gkc_summary *s, double q)
{
 double v = gkc_query(s, q);
 fprintf(stderr, "queried: %.02f, found: %.02f\n", q, v);
}
