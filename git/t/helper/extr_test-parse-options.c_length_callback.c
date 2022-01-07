
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {scalar_t__ value; } ;
struct TYPE_2__ {int called; char const* arg; int unset; } ;


 TYPE_1__ length_cb ;
 int strlen (char const*) ;

__attribute__((used)) static int length_callback(const struct option *opt, const char *arg, int unset)
{
 length_cb.called = 1;
 length_cb.arg = arg;
 length_cb.unset = unset;

 if (unset)
  return 1;

 *(int *)opt->value = strlen(arg);
 return 0;
}
