
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int find_copies_harder; } ;
struct TYPE_7__ {TYPE_1__ flags; } ;
struct rev_info {TYPE_3__ diffopt; int dense_combined_merges; scalar_t__ combine_merges; } ;
struct object_id {int dummy; } ;
struct combine_diff_path {char* path; unsigned int mode; TYPE_2__* parent; int oid; int * next; } ;
struct combine_diff_parent {int dummy; } ;
struct cache_entry {unsigned int ce_mode; int name; struct object_id const oid; } ;
struct TYPE_6__ {unsigned int mode; int oid; void* status; } ;


 void* DIFF_STATUS_MODIFIED ;
 int ce_namelen (struct cache_entry const*) ;
 int combine_diff_path_size (int,int) ;
 int diff_change (TYPE_3__*,unsigned int,unsigned int,struct object_id const*,struct object_id const*,int,int,int ,int ,unsigned int) ;
 int diff_index_show_file (struct rev_info*,char*,struct cache_entry const*,struct object_id const*,int,unsigned int,int ) ;
 int free (struct combine_diff_path*) ;
 scalar_t__ get_stat_data (struct cache_entry const*,struct object_id const**,unsigned int*,int,int,unsigned int*,TYPE_3__*) ;
 int is_null_oid (struct object_id const*) ;
 int memcpy (char*,int ,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int oidclr (int *) ;
 int oidcpy (int *,struct object_id const*) ;
 scalar_t__ oideq (struct object_id const*,struct object_id const*) ;
 int show_combined_diff (struct combine_diff_path*,int,int ,struct rev_info*) ;
 struct combine_diff_path* xmalloc (int ) ;

__attribute__((used)) static int show_modified(struct rev_info *revs,
    const struct cache_entry *old_entry,
    const struct cache_entry *new_entry,
    int report_missing,
    int cached, int match_missing)
{
 unsigned int mode, oldmode;
 const struct object_id *oid;
 unsigned dirty_submodule = 0;

 if (get_stat_data(new_entry, &oid, &mode, cached, match_missing,
     &dirty_submodule, &revs->diffopt) < 0) {
  if (report_missing)
   diff_index_show_file(revs, "-", old_entry,
          &old_entry->oid, 1, old_entry->ce_mode,
          0);
  return -1;
 }

 if (revs->combine_merges && !cached &&
     (!oideq(oid, &old_entry->oid) || !oideq(&old_entry->oid, &new_entry->oid))) {
  struct combine_diff_path *p;
  int pathlen = ce_namelen(new_entry);

  p = xmalloc(combine_diff_path_size(2, pathlen));
  p->path = (char *) &p->parent[2];
  p->next = ((void*)0);
  memcpy(p->path, new_entry->name, pathlen);
  p->path[pathlen] = 0;
  p->mode = mode;
  oidclr(&p->oid);
  memset(p->parent, 0, 2 * sizeof(struct combine_diff_parent));
  p->parent[0].status = DIFF_STATUS_MODIFIED;
  p->parent[0].mode = new_entry->ce_mode;
  oidcpy(&p->parent[0].oid, &new_entry->oid);
  p->parent[1].status = DIFF_STATUS_MODIFIED;
  p->parent[1].mode = old_entry->ce_mode;
  oidcpy(&p->parent[1].oid, &old_entry->oid);
  show_combined_diff(p, 2, revs->dense_combined_merges, revs);
  free(p);
  return 0;
 }

 oldmode = old_entry->ce_mode;
 if (mode == oldmode && oideq(oid, &old_entry->oid) && !dirty_submodule &&
     !revs->diffopt.flags.find_copies_harder)
  return 0;

 diff_change(&revs->diffopt, oldmode, mode,
      &old_entry->oid, oid, 1, !is_null_oid(oid),
      old_entry->name, 0, dirty_submodule);
 return 0;
}
