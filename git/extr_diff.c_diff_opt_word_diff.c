
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {scalar_t__ word_diff; int use_color; } ;


 int BUG_ON_OPT_NEG (int) ;
 scalar_t__ DIFF_WORDS_COLOR ;
 scalar_t__ DIFF_WORDS_NONE ;
 void* DIFF_WORDS_PLAIN ;
 scalar_t__ DIFF_WORDS_PORCELAIN ;
 int _ (char*) ;
 int error (int ,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int diff_opt_word_diff(const struct option *opt,
         const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 if (arg) {
  if (!strcmp(arg, "plain"))
   options->word_diff = DIFF_WORDS_PLAIN;
  else if (!strcmp(arg, "color")) {
   options->use_color = 1;
   options->word_diff = DIFF_WORDS_COLOR;
  }
  else if (!strcmp(arg, "porcelain"))
   options->word_diff = DIFF_WORDS_PORCELAIN;
  else if (!strcmp(arg, "none"))
   options->word_diff = DIFF_WORDS_NONE;
  else
   return error(_("bad --word-diff argument: %s"), arg);
 } else {
  if (options->word_diff == DIFF_WORDS_NONE)
   options->word_diff = DIFF_WORDS_PLAIN;
 }
 return 0;
}
