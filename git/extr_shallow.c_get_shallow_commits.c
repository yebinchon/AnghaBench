
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_array {int nr; TYPE_1__* objects; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit_graft {scalar_t__ nr_parent; } ;
struct commit_depth {int slab_count; int slab_size; int ** slab; } ;
struct TYPE_4__ {scalar_t__ type; int flags; int oid; } ;
struct commit {TYPE_2__ object; struct commit_list* parents; } ;
struct TYPE_3__ {int item; } ;


 int INFINITE_DEPTH ;
 struct object_array OBJECT_ARRAY_INIT ;
 scalar_t__ OBJ_COMMIT ;
 int add_object_array (TYPE_2__*,int *,struct object_array*) ;
 int clear_commit_depth (struct commit_depth*) ;
 int** commit_depth_at (struct commit_depth*,struct commit*) ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 scalar_t__ deref_tag (int ,int ,int *,int ) ;
 int free (int ) ;
 int init_commit_depth (struct commit_depth*) ;
 scalar_t__ is_repository_shallow (int ) ;
 struct commit_graft* lookup_commit_graft (int ,int *) ;
 scalar_t__ object_array_pop (struct object_array*) ;
 int parse_commit_or_die (struct commit*) ;
 int the_repository ;
 int* xmalloc (int) ;

struct commit_list *get_shallow_commits(struct object_array *heads, int depth,
  int shallow_flag, int not_shallow_flag)
{
 int i = 0, cur_depth = 0;
 struct commit_list *result = ((void*)0);
 struct object_array stack = OBJECT_ARRAY_INIT;
 struct commit *commit = ((void*)0);
 struct commit_graft *graft;
 struct commit_depth depths;

 init_commit_depth(&depths);
 while (commit || i < heads->nr || stack.nr) {
  struct commit_list *p;
  if (!commit) {
   if (i < heads->nr) {
    int **depth_slot;
    commit = (struct commit *)
     deref_tag(the_repository,
        heads->objects[i++].item,
        ((void*)0), 0);
    if (!commit || commit->object.type != OBJ_COMMIT) {
     commit = ((void*)0);
     continue;
    }
    depth_slot = commit_depth_at(&depths, commit);
    if (!*depth_slot)
     *depth_slot = xmalloc(sizeof(int));
    **depth_slot = 0;
    cur_depth = 0;
   } else {
    commit = (struct commit *)
     object_array_pop(&stack);
    cur_depth = **commit_depth_at(&depths, commit);
   }
  }
  parse_commit_or_die(commit);
  cur_depth++;
  if ((depth != INFINITE_DEPTH && cur_depth >= depth) ||
      (is_repository_shallow(the_repository) && !commit->parents &&
       (graft = lookup_commit_graft(the_repository, &commit->object.oid)) != ((void*)0) &&
       graft->nr_parent < 0)) {
   commit_list_insert(commit, &result);
   commit->object.flags |= shallow_flag;
   commit = ((void*)0);
   continue;
  }
  commit->object.flags |= not_shallow_flag;
  for (p = commit->parents, commit = ((void*)0); p; p = p->next) {
   int **depth_slot = commit_depth_at(&depths, p->item);
   if (!*depth_slot) {
    *depth_slot = xmalloc(sizeof(int));
    **depth_slot = cur_depth;
   } else {
    if (cur_depth >= **depth_slot)
     continue;
    **depth_slot = cur_depth;
   }
   if (p->next)
    add_object_array(&p->item->object,
      ((void*)0), &stack);
   else {
    commit = p->item;
    cur_depth = **commit_depth_at(&depths, commit);
   }
  }
 }
 for (i = 0; i < depths.slab_count; i++) {
  int j;

  if (!depths.slab[i])
   continue;
  for (j = 0; j < depths.slab_size; j++)
   free(depths.slab[i][j]);
 }
 clear_commit_depth(&depths);

 return result;
}
