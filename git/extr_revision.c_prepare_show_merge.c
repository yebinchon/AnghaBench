
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rev_info {int limited; int prune_data; TYPE_1__* repo; } ;
struct object_id {int dummy; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct commit_list {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct commit {TYPE_2__ object; } ;
struct cache_entry {char* name; } ;
struct TYPE_3__ {struct index_state* index; } ;


 int BOTTOM ;
 int PATHSPEC_ALL_MAGIC ;
 int PATHSPEC_LITERAL ;
 int PATHSPEC_LITERAL_PATH ;
 int PATHSPEC_PREFER_FULL ;
 int REALLOC_ARRAY (char const**,int) ;
 int REV_CMD_MERGE_BASE ;
 int SYMMETRIC_LEFT ;
 int UNINTERESTING ;
 int add_pending_commit_list (struct rev_info*,struct commit_list*,int) ;
 int add_pending_object (struct rev_info*,TYPE_2__*,char*) ;
 int add_rev_cmdline_list (struct rev_info*,struct commit_list*,int ,int) ;
 scalar_t__ ce_path_match (struct index_state*,struct cache_entry const*,int *,int *) ;
 scalar_t__ ce_same_name (struct cache_entry const*,struct cache_entry*) ;
 int ce_stage (struct cache_entry const*) ;
 int clear_pathspec (int *) ;
 int die (char*) ;
 int free_commit_list (struct commit_list*) ;
 struct commit_list* get_merge_bases (struct commit*,struct commit*) ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 struct commit* lookup_commit_or_die (struct object_id*,char*) ;
 int parse_pathspec (int *,int,int,char*,char const**) ;
 int repo_read_index (TYPE_1__*) ;

__attribute__((used)) static void prepare_show_merge(struct rev_info *revs)
{
 struct commit_list *bases;
 struct commit *head, *other;
 struct object_id oid;
 const char **prune = ((void*)0);
 int i, prune_num = 1;
 struct index_state *istate = revs->repo->index;

 if (get_oid("HEAD", &oid))
  die("--merge without HEAD?");
 head = lookup_commit_or_die(&oid, "HEAD");
 if (get_oid("MERGE_HEAD", &oid))
  die("--merge without MERGE_HEAD?");
 other = lookup_commit_or_die(&oid, "MERGE_HEAD");
 add_pending_object(revs, &head->object, "HEAD");
 add_pending_object(revs, &other->object, "MERGE_HEAD");
 bases = get_merge_bases(head, other);
 add_rev_cmdline_list(revs, bases, REV_CMD_MERGE_BASE, UNINTERESTING | BOTTOM);
 add_pending_commit_list(revs, bases, UNINTERESTING | BOTTOM);
 free_commit_list(bases);
 head->object.flags |= SYMMETRIC_LEFT;

 if (!istate->cache_nr)
  repo_read_index(revs->repo);
 for (i = 0; i < istate->cache_nr; i++) {
  const struct cache_entry *ce = istate->cache[i];
  if (!ce_stage(ce))
   continue;
  if (ce_path_match(istate, ce, &revs->prune_data, ((void*)0))) {
   prune_num++;
   REALLOC_ARRAY(prune, prune_num);
   prune[prune_num-2] = ce->name;
   prune[prune_num-1] = ((void*)0);
  }
  while ((i+1 < istate->cache_nr) &&
         ce_same_name(ce, istate->cache[i+1]))
   i++;
 }
 clear_pathspec(&revs->prune_data);
 parse_pathspec(&revs->prune_data, PATHSPEC_ALL_MAGIC & ~PATHSPEC_LITERAL,
         PATHSPEC_PREFER_FULL | PATHSPEC_LITERAL_PATH, "", prune);
 revs->limited = 1;
}
