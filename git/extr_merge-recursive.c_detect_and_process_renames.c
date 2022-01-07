
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {int dummy; } ;
struct string_list {int dummy; } ;
struct rename_info {int * merge_renames; int * head_renames; } ;
struct merge_options {scalar_t__ detect_directory_renames; int branch2; int branch1; TYPE_1__* priv; } ;
struct hashmap {int dummy; } ;
struct diff_queue_struct {int dummy; } ;
struct TYPE_2__ {int call_depth; } ;


 scalar_t__ MERGE_DIRECTORY_RENAMES_CONFLICT ;
 scalar_t__ MERGE_DIRECTORY_RENAMES_TRUE ;
 int dir_rename_init (struct hashmap*) ;
 struct diff_queue_struct* get_diffpairs (struct merge_options*,struct tree*,struct tree*) ;
 struct hashmap* get_directory_renames (struct diff_queue_struct*) ;
 void* get_renames (struct merge_options*,int ,struct diff_queue_struct*,struct hashmap*,struct hashmap*,struct tree*,struct tree*,struct tree*,struct tree*,struct string_list*,int*) ;
 int handle_directory_level_conflicts (struct merge_options*,struct hashmap*,struct tree*,struct hashmap*,struct tree*) ;
 int initial_cleanup_rename (struct diff_queue_struct*,struct hashmap*) ;
 int merge_detect_rename (struct merge_options*) ;
 int process_renames (struct merge_options*,int *,int *) ;
 struct hashmap* xmalloc (int) ;

__attribute__((used)) static int detect_and_process_renames(struct merge_options *opt,
          struct tree *common,
          struct tree *head,
          struct tree *merge,
          struct string_list *entries,
          struct rename_info *ri)
{
 struct diff_queue_struct *head_pairs, *merge_pairs;
 struct hashmap *dir_re_head, *dir_re_merge;
 int clean = 1;

 ri->head_renames = ((void*)0);
 ri->merge_renames = ((void*)0);

 if (!merge_detect_rename(opt))
  return 1;

 head_pairs = get_diffpairs(opt, common, head);
 merge_pairs = get_diffpairs(opt, common, merge);

 if ((opt->detect_directory_renames == MERGE_DIRECTORY_RENAMES_TRUE) ||
     (opt->detect_directory_renames == MERGE_DIRECTORY_RENAMES_CONFLICT &&
      !opt->priv->call_depth)) {
  dir_re_head = get_directory_renames(head_pairs);
  dir_re_merge = get_directory_renames(merge_pairs);

  handle_directory_level_conflicts(opt,
       dir_re_head, head,
       dir_re_merge, merge);
 } else {
  dir_re_head = xmalloc(sizeof(*dir_re_head));
  dir_re_merge = xmalloc(sizeof(*dir_re_merge));
  dir_rename_init(dir_re_head);
  dir_rename_init(dir_re_merge);
 }

 ri->head_renames = get_renames(opt, opt->branch1, head_pairs,
     dir_re_merge, dir_re_head, head,
     common, head, merge, entries,
     &clean);
 if (clean < 0)
  goto cleanup;
 ri->merge_renames = get_renames(opt, opt->branch2, merge_pairs,
     dir_re_head, dir_re_merge, merge,
     common, head, merge, entries,
     &clean);
 if (clean < 0)
  goto cleanup;
 clean &= process_renames(opt, ri->head_renames, ri->merge_renames);

cleanup:





 initial_cleanup_rename(head_pairs, dir_re_head);
 initial_cleanup_rename(merge_pairs, dir_re_merge);

 return clean;
}
