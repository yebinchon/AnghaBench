
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;
struct rev_info {int tag_objects; int blob_objects; int tree_objects; int ignore_missing_links; } ;
struct progress {int dummy; } ;
struct connectivity_progress {scalar_t__ count; struct progress* progress; } ;
struct bitmap_index {int dummy; } ;


 int add_index_objects_to_pending (struct rev_info*,int ) ;
 int add_one_ref ;
 int add_reflogs_to_pending (struct rev_info*,int ) ;
 scalar_t__ add_unseen_recent_objects_to_traversal (struct rev_info*,scalar_t__) ;
 int die (char*) ;
 int display_progress (struct progress*,scalar_t__) ;
 int for_each_ref (int ,struct rev_info*) ;
 int free_bitmap_index (struct bitmap_index*) ;
 int head_ref (int ,struct rev_info*) ;
 int mark_commit ;
 int mark_object ;
 int mark_object_seen ;
 int other_head_refs (int ,struct rev_info*) ;
 struct bitmap_index* prepare_bitmap_walk (struct rev_info*) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int traverse_bitmap_commit_list (struct bitmap_index*,int ) ;
 int traverse_commit_list (struct rev_info*,int ,int ,struct connectivity_progress*) ;

void mark_reachable_objects(struct rev_info *revs, int mark_reflog,
       timestamp_t mark_recent, struct progress *progress)
{
 struct connectivity_progress cp;
 struct bitmap_index *bitmap_git;





 revs->tag_objects = 1;
 revs->blob_objects = 1;
 revs->tree_objects = 1;


 add_index_objects_to_pending(revs, 0);


 for_each_ref(add_one_ref, revs);


 head_ref(add_one_ref, revs);
 other_head_refs(add_one_ref, revs);


 if (mark_reflog)
  add_reflogs_to_pending(revs, 0);

 cp.progress = progress;
 cp.count = 0;

 bitmap_git = prepare_bitmap_walk(revs);
 if (bitmap_git) {
  traverse_bitmap_commit_list(bitmap_git, mark_object_seen);
  free_bitmap_index(bitmap_git);
  return;
 }





 if (prepare_revision_walk(revs))
  die("revision walk setup failed");
 traverse_commit_list(revs, mark_commit, mark_object, &cp);

 if (mark_recent) {
  revs->ignore_missing_links = 1;
  if (add_unseen_recent_objects_to_traversal(revs, mark_recent))
   die("unable to mark recent objects");
  if (prepare_revision_walk(revs))
   die("revision walk setup failed");
  traverse_commit_list(revs, mark_commit, mark_object, &cp);
 }

 display_progress(cp.progress, cp.count);
}
