
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_opt {int extended_regexp_option; int fixed; int pcre2; int pcre1; } ;
typedef enum grep_pattern_type { ____Placeholder_grep_pattern_type } grep_pattern_type ;
__attribute__((used)) static void grep_set_pattern_type_option(enum grep_pattern_type pattern_type, struct grep_opt *opt)
{
 if (pattern_type != 131 &&
     opt->extended_regexp_option)
  opt->extended_regexp_option = 0;

 switch (pattern_type) {
 case 128:


 case 132:
  break;

 case 131:
  opt->extended_regexp_option = 1;
  break;

 case 130:
  opt->fixed = 1;
  break;

 case 129:
  opt->pcre1 = 1;

  break;
 }
}
