
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {scalar_t__ word_diff; char const* word_regex; } ;


 int BUG_ON_OPT_NEG (int) ;
 scalar_t__ DIFF_WORDS_NONE ;
 scalar_t__ DIFF_WORDS_PLAIN ;

__attribute__((used)) static int diff_opt_word_diff_regex(const struct option *opt,
        const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 if (options->word_diff == DIFF_WORDS_NONE)
  options->word_diff = DIFF_WORDS_PLAIN;
 options->word_regex = arg;
 return 0;
}
