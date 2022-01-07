
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;



int parse_opt_noop_cb(const struct option *opt, const char *arg, int unset)
{
 return 0;
}
