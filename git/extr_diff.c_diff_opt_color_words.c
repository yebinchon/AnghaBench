
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {int use_color; char const* word_regex; int word_diff; } ;


 int BUG_ON_OPT_NEG (int) ;
 int DIFF_WORDS_COLOR ;

__attribute__((used)) static int diff_opt_color_words(const struct option *opt,
    const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 options->use_color = 1;
 options->word_diff = DIFF_WORDS_COLOR;
 options->word_regex = arg;
 return 0;
}
