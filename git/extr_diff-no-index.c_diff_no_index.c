
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_9__ {int no_index; int relative_name; int exit_with_status; } ;
struct TYPE_10__ {int skip_stat_unmatch; char const* prefix; TYPE_1__ flags; scalar_t__ output_format; int parseopts; } ;
struct rev_info {char* prefix; int max_count; TYPE_2__ diffopt; } ;
struct option {int dummy; } ;


 scalar_t__ DIFF_FORMAT_PATCH ;
 int FREE_AND_NULL (struct option*) ;
 struct option OPT_BOOL_F (int ,char*,int*,char*,int) ;
 struct option OPT_END () ;
 int PARSE_OPT_HIDDEN ;
 int PARSE_OPT_NONEG ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int diff_flush (TYPE_2__*) ;
 int diff_no_index_usage ;
 int diff_result_code (TYPE_2__*,int ) ;
 int diff_set_mnemonic_prefix (TYPE_2__*,char*,char*) ;
 int diff_setup_done (TYPE_2__*) ;
 int diffcore_std (TYPE_2__*) ;
 char* file_from_standard_input ;
 int fixup_paths (char const**,struct strbuf*) ;
 int parse_options (int,char const**,char*,struct option*,int ,int ) ;
 struct option* parse_options_concat (struct option*,int ) ;
 char* prefix_filename (char const*,char const*) ;
 scalar_t__ queue_diff (TYPE_2__*,char const*,char const*) ;
 int setup_diff_pager (TYPE_2__*) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char*) ;
 int usage_with_options (int ,struct option*) ;
 int warning (int ) ;

int diff_no_index(struct rev_info *revs,
    int implicit_no_index,
    int argc, const char **argv)
{
 int i, no_index;
 const char *paths[2];
 struct strbuf replacement = STRBUF_INIT;
 const char *prefix = revs->prefix;
 struct option no_index_options[] = {
  OPT_BOOL_F(0, "no-index", &no_index, "",
      PARSE_OPT_NONEG | PARSE_OPT_HIDDEN),
  OPT_END(),
 };
 struct option *options;

 options = parse_options_concat(no_index_options,
           revs->diffopt.parseopts);
 argc = parse_options(argc, argv, revs->prefix, options,
        diff_no_index_usage, 0);
 if (argc != 2) {
  if (implicit_no_index)
   warning(_("Not a git repository. Use --no-index to "
      "compare two paths outside a working tree"));
  usage_with_options(diff_no_index_usage, options);
 }
 FREE_AND_NULL(options);
 for (i = 0; i < 2; i++) {
  const char *p = argv[argc - 2 + i];
  if (!strcmp(p, "-"))




   p = file_from_standard_input;
  else if (prefix)
   p = prefix_filename(prefix, p);
  paths[i] = p;
 }

 fixup_paths(paths, &replacement);

 revs->diffopt.skip_stat_unmatch = 1;
 if (!revs->diffopt.output_format)
  revs->diffopt.output_format = DIFF_FORMAT_PATCH;

 revs->diffopt.flags.no_index = 1;

 revs->diffopt.flags.relative_name = 1;
 revs->diffopt.prefix = prefix;

 revs->max_count = -2;
 diff_setup_done(&revs->diffopt);

 setup_diff_pager(&revs->diffopt);
 revs->diffopt.flags.exit_with_status = 1;

 if (queue_diff(&revs->diffopt, paths[0], paths[1]))
  return 1;
 diff_set_mnemonic_prefix(&revs->diffopt, "1/", "2/");
 diffcore_std(&revs->diffopt);
 diff_flush(&revs->diffopt);

 strbuf_release(&replacement);





 return diff_result_code(&revs->diffopt, 0);
}
