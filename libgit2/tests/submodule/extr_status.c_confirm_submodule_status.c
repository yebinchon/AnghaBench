
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* statuses; size_t counter; int * paths; } ;
typedef TYPE_1__ submodule_expectations ;


 int GIT_UNUSED (unsigned int) ;
 int cl_assert_equal_i (scalar_t__,int) ;
 int cl_assert_equal_s (int ,char const*) ;

__attribute__((used)) static int confirm_submodule_status(
 const char *path, unsigned int status_flags, void *payload)
{
 submodule_expectations *exp = payload;

 while (exp->statuses[exp->counter] < 0)
  exp->counter++;

 cl_assert_equal_i(exp->statuses[exp->counter], (int)status_flags);
 cl_assert_equal_s(exp->paths[exp->counter++], path);

 GIT_UNUSED(status_flags);

 return 0;
}
