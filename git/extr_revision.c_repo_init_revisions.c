
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int use_default_notes; } ;
struct TYPE_9__ {char const* prefix; int prefix_length; } ;
struct TYPE_10__ {int status_only; } ;
struct TYPE_6__ {int recursive; int quick; } ;
struct TYPE_7__ {struct rev_info* change_fn_data; int change; int add_remove; TYPE_1__ flags; struct repository* repo; } ;
struct rev_info {int ignore_merges; int simplify_history; int dense; char const* prefix; int max_age; int min_age; int skip_count; int max_count; int max_parents; int expand_tabs_in_log; int expand_tabs_in_log_default; TYPE_3__ notes_opt; TYPE_4__ diffopt; struct repository* repo; TYPE_5__ grep_filter; int commit_format; int sort_order; TYPE_2__ pruning; int abbrev; } ;
struct repository {int dummy; } ;


 int CMIT_FMT_DEFAULT ;
 int DEFAULT_ABBREV ;
 int REV_SORT_IN_GRAPH_ORDER ;
 int file_add_remove ;
 int file_change ;
 int grep_init (TYPE_5__*,struct repository*,char const*) ;
 int init_grep_defaults (struct repository*) ;
 int memset (struct rev_info*,int ,int) ;
 int repo_diff_setup (struct repository*,TYPE_4__*) ;
 int strlen (char const*) ;

void repo_init_revisions(struct repository *r,
    struct rev_info *revs,
    const char *prefix)
{
 memset(revs, 0, sizeof(*revs));

 revs->repo = r;
 revs->abbrev = DEFAULT_ABBREV;
 revs->ignore_merges = 1;
 revs->simplify_history = 1;
 revs->pruning.repo = r;
 revs->pruning.flags.recursive = 1;
 revs->pruning.flags.quick = 1;
 revs->pruning.add_remove = file_add_remove;
 revs->pruning.change = file_change;
 revs->pruning.change_fn_data = revs;
 revs->sort_order = REV_SORT_IN_GRAPH_ORDER;
 revs->dense = 1;
 revs->prefix = prefix;
 revs->max_age = -1;
 revs->min_age = -1;
 revs->skip_count = -1;
 revs->max_count = -1;
 revs->max_parents = -1;
 revs->expand_tabs_in_log = -1;

 revs->commit_format = CMIT_FMT_DEFAULT;
 revs->expand_tabs_in_log_default = 8;

 init_grep_defaults(revs->repo);
 grep_init(&revs->grep_filter, revs->repo, prefix);
 revs->grep_filter.status_only = 1;

 repo_diff_setup(revs->repo, &revs->diffopt);
 if (prefix && !revs->diffopt.prefix) {
  revs->diffopt.prefix = prefix;
  revs->diffopt.prefix_length = strlen(prefix);
 }

 revs->notes_opt.use_default_notes = -1;
}
