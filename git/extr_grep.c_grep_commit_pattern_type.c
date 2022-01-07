
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_opt {int pattern_type_option; scalar_t__ extended_regexp_option; } ;
typedef enum grep_pattern_type { ____Placeholder_grep_pattern_type } grep_pattern_type ;


 int GREP_PATTERN_TYPE_ERE ;
 int GREP_PATTERN_TYPE_UNSPECIFIED ;
 int grep_set_pattern_type_option (int,struct grep_opt*) ;

void grep_commit_pattern_type(enum grep_pattern_type pattern_type, struct grep_opt *opt)
{
 if (pattern_type != GREP_PATTERN_TYPE_UNSPECIFIED)
  grep_set_pattern_type_option(pattern_type, opt);
 else if (opt->pattern_type_option != GREP_PATTERN_TYPE_UNSPECIFIED)
  grep_set_pattern_type_option(opt->pattern_type_option, opt);
 else if (opt->extended_regexp_option)





  grep_set_pattern_type_option(GREP_PATTERN_TYPE_ERE, opt);
}
