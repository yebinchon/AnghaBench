
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tree {int object; } ;
struct TYPE_6__ {int ignore_submodules; int quick; } ;
struct TYPE_9__ {TYPE_1__ flags; } ;
struct TYPE_7__ {int nr; } ;
struct rev_info {TYPE_4__ diffopt; TYPE_2__ pending; } ;
struct repository {int index; } ;
struct TYPE_8__ {int empty_tree; } ;


 int add_head_to_pending (struct rev_info*) ;
 int add_pending_object (struct rev_info*,int *,char*) ;
 int diff_result_code (TYPE_4__*,int) ;
 int diff_setup_done (TYPE_4__*) ;
 scalar_t__ is_index_unborn (int ) ;
 struct tree* lookup_tree (struct repository*,int ) ;
 int repo_init_revisions (struct repository*,struct rev_info*,int *) ;
 int run_diff_index (struct rev_info*,int) ;
 TYPE_3__* the_hash_algo ;

int has_uncommitted_changes(struct repository *r,
       int ignore_submodules)
{
 struct rev_info rev_info;
 int result;

 if (is_index_unborn(r->index))
  return 0;

 repo_init_revisions(r, &rev_info, ((void*)0));
 if (ignore_submodules)
  rev_info.diffopt.flags.ignore_submodules = 1;
 rev_info.diffopt.flags.quick = 1;

 add_head_to_pending(&rev_info);
 if (!rev_info.pending.nr) {




  struct tree *tree = lookup_tree(r, the_hash_algo->empty_tree);
  add_pending_object(&rev_info, &tree->object, "");
 }

 diff_setup_done(&rev_info.diffopt);
 result = run_diff_index(&rev_info, 1);
 return diff_result_code(&rev_info.diffopt, result);
}
