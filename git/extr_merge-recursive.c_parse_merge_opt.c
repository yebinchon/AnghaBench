
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_options {char* subtree_shift; long xdl_opts; int renormalize; int detect_renames; int rename_score; int recursive_variant; } ;


 void* DIFF_WITH_ALG (struct merge_options*,int ) ;
 int DIFF_XDL_CLR (struct merge_options*,int ) ;
 int DIFF_XDL_SET (struct merge_options*,int ) ;
 int HISTOGRAM_DIFF ;
 int IGNORE_CR_AT_EOL ;
 int IGNORE_WHITESPACE ;
 int IGNORE_WHITESPACE_AT_EOL ;
 int IGNORE_WHITESPACE_CHANGE ;
 int MERGE_VARIANT_OURS ;
 int MERGE_VARIANT_THEIRS ;
 int NEED_MINIMAL ;
 int PATIENCE_DIFF ;
 long XDF_DIFF_ALGORITHM_MASK ;
 long parse_algorithm_value (char const*) ;
 int parse_rename_score (char const**) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char*) ;

int parse_merge_opt(struct merge_options *opt, const char *s)
{
 const char *arg;

 if (!s || !*s)
  return -1;
 if (!strcmp(s, "ours"))
  opt->recursive_variant = MERGE_VARIANT_OURS;
 else if (!strcmp(s, "theirs"))
  opt->recursive_variant = MERGE_VARIANT_THEIRS;
 else if (!strcmp(s, "subtree"))
  opt->subtree_shift = "";
 else if (skip_prefix(s, "subtree=", &arg))
  opt->subtree_shift = arg;
 else if (!strcmp(s, "patience"))
  opt->xdl_opts = DIFF_WITH_ALG(opt, PATIENCE_DIFF);
 else if (!strcmp(s, "histogram"))
  opt->xdl_opts = DIFF_WITH_ALG(opt, HISTOGRAM_DIFF);
 else if (skip_prefix(s, "diff-algorithm=", &arg)) {
  long value = parse_algorithm_value(arg);
  if (value < 0)
   return -1;

  DIFF_XDL_CLR(opt, NEED_MINIMAL);
  opt->xdl_opts &= ~XDF_DIFF_ALGORITHM_MASK;
  opt->xdl_opts |= value;
 }
 else if (!strcmp(s, "ignore-space-change"))
  DIFF_XDL_SET(opt, IGNORE_WHITESPACE_CHANGE);
 else if (!strcmp(s, "ignore-all-space"))
  DIFF_XDL_SET(opt, IGNORE_WHITESPACE);
 else if (!strcmp(s, "ignore-space-at-eol"))
  DIFF_XDL_SET(opt, IGNORE_WHITESPACE_AT_EOL);
 else if (!strcmp(s, "ignore-cr-at-eol"))
  DIFF_XDL_SET(opt, IGNORE_CR_AT_EOL);
 else if (!strcmp(s, "renormalize"))
  opt->renormalize = 1;
 else if (!strcmp(s, "no-renormalize"))
  opt->renormalize = 0;
 else if (!strcmp(s, "no-renames"))
  opt->detect_renames = 0;
 else if (!strcmp(s, "find-renames")) {
  opt->detect_renames = 1;
  opt->rename_score = 0;
 }
 else if (skip_prefix(s, "find-renames=", &arg) ||
   skip_prefix(s, "rename-threshold=", &arg)) {
  if ((opt->rename_score = parse_rename_score(&arg)) == -1 || *arg != 0)
   return -1;
  opt->detect_renames = 1;
 }




 else
  return -1;
 return 0;
}
