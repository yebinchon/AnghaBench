
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct push_cas_option {int nr; int use_tracking_for_rest; } ;



int is_empty_cas(const struct push_cas_option *cas)
{
 return !cas->use_tracking_for_rest && !cas->nr;
}
