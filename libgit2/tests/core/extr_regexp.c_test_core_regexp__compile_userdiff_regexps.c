
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int words; int flags; int fns; } ;
typedef TYPE_1__ git_diff_driver_definition ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* builtin_defs ;
 int cl_git_pass (int ) ;
 int git_regexp_compile (int *,int ,int ) ;
 int git_regexp_dispose (int *) ;
 int regex ;

void test_core_regexp__compile_userdiff_regexps(void)
{
 size_t idx;

 for (idx = 0; idx < ARRAY_SIZE(builtin_defs); ++idx) {
  git_diff_driver_definition ddef = builtin_defs[idx];

  cl_git_pass(git_regexp_compile(&regex, ddef.fns, ddef.flags));
  git_regexp_dispose(&regex);

  cl_git_pass(git_regexp_compile(&regex, ddef.words, 0));
  git_regexp_dispose(&regex);
 }
}
