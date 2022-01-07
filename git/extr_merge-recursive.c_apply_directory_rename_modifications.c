
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int oid; } ;
struct tree {TYPE_1__ object; } ;
struct string_list_item {TYPE_4__* util; } ;
struct string_list {int dummy; } ;
struct rename {char dir_rename_original_type; char* dir_rename_original_dest; TYPE_4__* dst_entry; } ;
struct merge_options {int repo; } ;
struct diff_filepair {char status; TYPE_3__* two; } ;
struct TYPE_8__ {int processed; TYPE_2__* stages; } ;
struct TYPE_7__ {char* path; } ;
struct TYPE_6__ {int mode; int oid; } ;


 int _ (char*) ;
 int get_tree_entry (int ,int *,char*,int *,int *) ;
 TYPE_4__* insert_stage_data (int ,char*,struct tree*,struct tree*,struct tree*,struct string_list*) ;
 int output (struct merge_options*,int,int ,char*) ;
 int remove_file (struct merge_options*,int,char*,int) ;
 struct string_list_item* string_list_insert (struct string_list*,char*) ;
 struct string_list_item* string_list_lookup (struct string_list*,char*) ;
 int was_dirty (struct merge_options*,char*) ;

__attribute__((used)) static void apply_directory_rename_modifications(struct merge_options *opt,
       struct diff_filepair *pair,
       char *new_path,
       struct rename *re,
       struct tree *tree,
       struct tree *o_tree,
       struct tree *a_tree,
       struct tree *b_tree,
       struct string_list *entries)
{
 struct string_list_item *item;
 int stage = (tree == a_tree ? 2 : 3);
 int update_wd;
 update_wd = !was_dirty(opt, pair->two->path);
 if (!update_wd)
  output(opt, 1, _("Refusing to lose dirty file at %s"),
         pair->two->path);
 remove_file(opt, 1, pair->two->path, !update_wd);


 item = string_list_lookup(entries, new_path);
 if (item) {
  re->dst_entry->processed = 1;




  re->dst_entry = item->util;
 } else {
  if (pair->status == 'R')
   re->dst_entry->processed = 1;

  re->dst_entry = insert_stage_data(opt->repo, new_path,
        o_tree, a_tree, b_tree,
        entries);
  item = string_list_insert(entries, new_path);
  item->util = re->dst_entry;
 }
 get_tree_entry(opt->repo,
         &tree->object.oid,
         pair->two->path,
         &re->dst_entry->stages[stage].oid,
         &re->dst_entry->stages[stage].mode);
 re->dir_rename_original_type = pair->status;
 re->dir_rename_original_dest = pair->two->path;





 pair->status = 'R';




 pair->two->path = new_path;
}
