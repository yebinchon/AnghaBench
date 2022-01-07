
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gkc_summary {int dummy; } ;


 struct gkc_summary* calloc (int,int) ;
 int gkc_summary_init (struct gkc_summary*,double) ;

struct gkc_summary *gkc_summary_alloc(double epsilon)
{
    struct gkc_summary *s;
    s = calloc(1, sizeof(*s));
    gkc_summary_init(s, epsilon);
    return s;
}
