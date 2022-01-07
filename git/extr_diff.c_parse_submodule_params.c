
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int submodule_format; } ;


 int DIFF_SUBMODULE_INLINE_DIFF ;
 int DIFF_SUBMODULE_LOG ;
 int DIFF_SUBMODULE_SHORT ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int parse_submodule_params(struct diff_options *options, const char *value)
{
 if (!strcmp(value, "log"))
  options->submodule_format = DIFF_SUBMODULE_LOG;
 else if (!strcmp(value, "short"))
  options->submodule_format = DIFF_SUBMODULE_SHORT;
 else if (!strcmp(value, "diff"))
  options->submodule_format = DIFF_SUBMODULE_INLINE_DIFF;




 else
  return -1;
 return 0;
}
