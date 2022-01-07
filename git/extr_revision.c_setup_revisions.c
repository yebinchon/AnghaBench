
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct setup_revision_opt {char* submodule; int revarg_opt; int (* tweak ) (struct rev_info*,struct setup_revision_opt*) ;int * def; scalar_t__ assume_dashdash; } ;
struct TYPE_12__ {scalar_t__ follow_renames; } ;
struct TYPE_16__ {int output_format; int pickaxe_opts; int abbrev; int pathspec; TYPE_3__ flags; scalar_t__ objfind; scalar_t__ filter; } ;
struct TYPE_15__ {int ignore_locale; scalar_t__ use_reflog_filter; } ;
struct TYPE_13__ {scalar_t__ name; } ;
struct TYPE_14__ {scalar_t__ nr; } ;
struct TYPE_11__ {int pathspec; } ;
struct TYPE_10__ {int nr; } ;
struct rev_info {int diff; int topo_order; int limited; int prune; scalar_t__ expand_tabs_in_log; scalar_t__ expand_tabs_in_log_default; TYPE_7__ diffopt; scalar_t__ line_level_traverse; scalar_t__ bisect; scalar_t__ first_parent_only; TYPE_6__ grep_filter; scalar_t__ reflog_info; scalar_t__ graph; scalar_t__ no_walk; scalar_t__ reverse; TYPE_4__ children; scalar_t__ rewrite_parents; int abbrev; scalar_t__ combine_merges; scalar_t__ combined_all_paths; scalar_t__ ignore_merges; TYPE_5__ prune_data; int full_diff; TYPE_2__ pruning; scalar_t__ simplify_history; int * def; int repo; int rev_input_given; TYPE_1__ pending; scalar_t__ show_merge; int prefix; int read_from_stdin; scalar_t__ disable_stdin; } ;
struct object_id {int dummy; } ;
struct object_context {int mode; } ;
struct object {int dummy; } ;
struct argv_array {int argv; scalar_t__ argc; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int DIFF_FORMAT_NO_OUTPUT ;
 int DIFF_FORMAT_PATCH ;
 int DIFF_PICKAXE_KINDS_MASK ;
 int GREP_PATTERN_TYPE_UNSPECIFIED ;
 int REVARG_CANNOT_BE_FILENAME ;
 char* _ (char*) ;
 int add_pending_object_with_mode (struct rev_info*,struct object*,int *,int ) ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_pushv (struct argv_array*,char const**) ;
 int compile_grep_patterns (TYPE_6__*) ;
 int copy_pathspec (int *,TYPE_5__*) ;
 int diagnose_missing_default (int *) ;
 int die (char*,...) ;
 int diff_setup_done (TYPE_7__*) ;
 int exit (int) ;
 int generation_numbers_enabled (int ) ;
 int get_log_output_encoding () ;
 scalar_t__ get_oid_with_context (int ,int *,int ,struct object_id*,struct object_context*) ;
 struct object* get_reference (struct rev_info*,int *,struct object_id*,int ) ;
 int grep_commit_pattern_type (int ,TYPE_6__*) ;
 scalar_t__ handle_revision_arg (char const*,struct rev_info*,int,int) ;
 int handle_revision_opt (struct rev_info*,int,char const**,int*,char const**,struct setup_revision_opt*) ;
 int handle_revision_pseudo_opt (char const*,struct rev_info*,int,char const**,int*) ;
 int is_encoding_utf8 (int ) ;
 int parse_pathspec (TYPE_5__*,int ,int ,int ,int ) ;
 int prepare_show_merge (struct rev_info*) ;
 int read_revisions_from_stdin (struct rev_info*,struct argv_array*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (struct rev_info*,struct setup_revision_opt*) ;
 int the_repository ;
 int verify_filename (int ,char const*,int) ;

int setup_revisions(int argc, const char **argv, struct rev_info *revs, struct setup_revision_opt *opt)
{
 int i, flags, left, seen_dashdash, got_rev_arg = 0, revarg_opt;
 struct argv_array prune_data = ARGV_ARRAY_INIT;
 const char *submodule = ((void*)0);
 int seen_end_of_options = 0;

 if (opt)
  submodule = opt->submodule;


 if (opt && opt->assume_dashdash) {
  seen_dashdash = 1;
 } else {
  seen_dashdash = 0;
  for (i = 1; i < argc; i++) {
   const char *arg = argv[i];
   if (strcmp(arg, "--"))
    continue;
   argv[i] = ((void*)0);
   argc = i;
   if (argv[i + 1])
    argv_array_pushv(&prune_data, argv + i + 1);
   seen_dashdash = 1;
   break;
  }
 }


 flags = 0;
 revarg_opt = opt ? opt->revarg_opt : 0;
 if (seen_dashdash)
  revarg_opt |= REVARG_CANNOT_BE_FILENAME;
 for (left = i = 1; i < argc; i++) {
  const char *arg = argv[i];
  if (!seen_end_of_options && *arg == '-') {
   int opts;

   opts = handle_revision_pseudo_opt(submodule,
      revs, argc - i, argv + i,
      &flags);
   if (opts > 0) {
    i += opts - 1;
    continue;
   }

   if (!strcmp(arg, "--stdin")) {
    if (revs->disable_stdin) {
     argv[left++] = arg;
     continue;
    }
    if (revs->read_from_stdin++)
     die("--stdin given twice?");
    read_revisions_from_stdin(revs, &prune_data);
    continue;
   }

   if (!strcmp(arg, "--end-of-options")) {
    seen_end_of_options = 1;
    continue;
   }

   opts = handle_revision_opt(revs, argc - i, argv + i,
         &left, argv, opt);
   if (opts > 0) {
    i += opts - 1;
    continue;
   }
   if (opts < 0)
    exit(128);
   continue;
  }


  if (handle_revision_arg(arg, revs, flags, revarg_opt)) {
   int j;
   if (seen_dashdash || *arg == '^')
    die("bad revision '%s'", arg);







   for (j = i; j < argc; j++)
    verify_filename(revs->prefix, argv[j], j == i);

   argv_array_pushv(&prune_data, argv + i);
   break;
  }
  else
   got_rev_arg = 1;
 }

 if (prune_data.argc) {
  parse_pathspec(&revs->prune_data, 0, 0,
          revs->prefix, prune_data.argv);
 }
 argv_array_clear(&prune_data);

 if (revs->def == ((void*)0))
  revs->def = opt ? opt->def : ((void*)0);
 if (opt && opt->tweak)
  opt->tweak(revs, opt);
 if (revs->show_merge)
  prepare_show_merge(revs);
 if (revs->def && !revs->pending.nr && !revs->rev_input_given && !got_rev_arg) {
  struct object_id oid;
  struct object *object;
  struct object_context oc;
  if (get_oid_with_context(revs->repo, revs->def, 0, &oid, &oc))
   diagnose_missing_default(revs->def);
  object = get_reference(revs, revs->def, &oid, 0);
  add_pending_object_with_mode(revs, object, revs->def, oc.mode);
 }


 if (revs->diffopt.output_format & ~DIFF_FORMAT_NO_OUTPUT)
  revs->diff = 1;


 if ((revs->diffopt.pickaxe_opts & DIFF_PICKAXE_KINDS_MASK) ||
     revs->diffopt.filter ||
     revs->diffopt.flags.follow_renames)
  revs->diff = 1;

 if (revs->diffopt.objfind)
  revs->simplify_history = 0;

 if (revs->topo_order && !generation_numbers_enabled(the_repository))
  revs->limited = 1;

 if (revs->prune_data.nr) {
  copy_pathspec(&revs->pruning.pathspec, &revs->prune_data);

  if (!revs->diffopt.flags.follow_renames)
   revs->prune = 1;
  if (!revs->full_diff)
   copy_pathspec(&revs->diffopt.pathspec,
          &revs->prune_data);
 }
 if (revs->combine_merges)
  revs->ignore_merges = 0;
 if (revs->combined_all_paths && !revs->combine_merges)
  die("--combined-all-paths makes no sense without -c or --cc");

 revs->diffopt.abbrev = revs->abbrev;

 if (revs->line_level_traverse) {
  revs->limited = 1;
  revs->topo_order = 1;
 }

 diff_setup_done(&revs->diffopt);

 grep_commit_pattern_type(GREP_PATTERN_TYPE_UNSPECIFIED,
     &revs->grep_filter);
 if (!is_encoding_utf8(get_log_output_encoding()))
  revs->grep_filter.ignore_locale = 1;
 compile_grep_patterns(&revs->grep_filter);

 if (revs->reverse && revs->reflog_info)
  die("cannot combine --reverse with --walk-reflogs");
 if (revs->reflog_info && revs->limited)
  die("cannot combine --walk-reflogs with history-limiting options");
 if (revs->rewrite_parents && revs->children.name)
  die("cannot combine --parents and --children");




 if (revs->reverse && revs->graph)
  die("cannot combine --reverse with --graph");

 if (revs->reflog_info && revs->graph)
  die("cannot combine --walk-reflogs with --graph");
 if (revs->no_walk && revs->graph)
  die("cannot combine --no-walk with --graph");
 if (!revs->reflog_info && revs->grep_filter.use_reflog_filter)
  die("cannot use --grep-reflog without --walk-reflogs");

 if (revs->first_parent_only && revs->bisect)
  die(_("--first-parent is incompatible with --bisect"));

 if (revs->line_level_traverse &&
     (revs->diffopt.output_format & ~(DIFF_FORMAT_PATCH | DIFF_FORMAT_NO_OUTPUT)))
  die(_("-L does not yet support diff formats besides -p and -s"));

 if (revs->expand_tabs_in_log < 0)
  revs->expand_tabs_in_log = revs->expand_tabs_in_log_default;

 return left;
}
