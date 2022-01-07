
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct rename_conflict_info {TYPE_8__* ren1; TYPE_7__* ren2; } ;
struct merge_options {TYPE_4__* repo; TYPE_3__* priv; } ;
struct diff_filespec {char* path; } ;
struct merge_file_info {struct diff_filespec blob; } ;
struct TYPE_16__ {int branch; TYPE_5__* dst_entry; TYPE_1__* pair; } ;
struct TYPE_15__ {int branch; TYPE_6__* dst_entry; TYPE_2__* pair; } ;
struct TYPE_14__ {struct diff_filespec* stages; } ;
struct TYPE_13__ {struct diff_filespec* stages; } ;
struct TYPE_12__ {int index; } ;
struct TYPE_11__ {int call_depth; } ;
struct TYPE_10__ {struct diff_filespec* two; } ;
struct TYPE_9__ {struct diff_filespec* two; struct diff_filespec* one; } ;


 char* _ (char*) ;
 char* find_path_for_conflict (struct merge_options*,char*,int ,int ) ;
 int free (char*) ;
 scalar_t__ handle_file_collision (struct merge_options*,char*,int *,int *,int ,int ,struct diff_filespec*,struct diff_filespec*) ;
 scalar_t__ is_valid (struct diff_filespec*) ;
 scalar_t__ merge_mode_and_contents (struct merge_options*,struct diff_filespec*,struct diff_filespec*,struct diff_filespec*,char*,int ,int ,int,struct merge_file_info*) ;
 int output (struct merge_options*,int,char*,char*,char*,int ,char*,char*,int ,char*) ;
 int remove_file_from_index (int ,char*) ;
 scalar_t__ update_file (struct merge_options*,int ,struct diff_filespec*,char*) ;
 scalar_t__ update_stages (struct merge_options*,char*,int *,struct diff_filespec*,struct diff_filespec*) ;
 char* xstrfmt (char*,char*,char*,char*) ;

__attribute__((used)) static int handle_rename_rename_1to2(struct merge_options *opt,
         struct rename_conflict_info *ci)
{

 struct merge_file_info mfi;
 struct diff_filespec *add;
 struct diff_filespec *o = ci->ren1->pair->one;
 struct diff_filespec *a = ci->ren1->pair->two;
 struct diff_filespec *b = ci->ren2->pair->two;
 char *path_desc;

 output(opt, 1, _("CONFLICT (rename/rename): "
        "Rename \"%s\"->\"%s\" in branch \"%s\" "
        "rename \"%s\"->\"%s\" in \"%s\"%s"),
        o->path, a->path, ci->ren1->branch,
        o->path, b->path, ci->ren2->branch,
        opt->priv->call_depth ? _(" (left unresolved)") : "");

 path_desc = xstrfmt("%s and %s, both renamed from %s",
       a->path, b->path, o->path);
 if (merge_mode_and_contents(opt, o, a, b, path_desc,
        ci->ren1->branch, ci->ren2->branch,
        opt->priv->call_depth * 2, &mfi))
  return -1;
 free(path_desc);

 if (opt->priv->call_depth) {






  if (update_file(opt, 0, &mfi.blob, o->path))
   return -1;
  add = &ci->ren1->dst_entry->stages[2 ^ 1];
  if (is_valid(add)) {
   if (update_file(opt, 0, add, a->path))
    return -1;
  }
  else
   remove_file_from_index(opt->repo->index, a->path);
  add = &ci->ren2->dst_entry->stages[3 ^ 1];
  if (is_valid(add)) {
   if (update_file(opt, 0, add, b->path))
    return -1;
  }
  else
   remove_file_from_index(opt->repo->index, b->path);
 } else {





  add = &ci->ren1->dst_entry->stages[2 ^ 1];
  if (is_valid(add)) {
   add->path = mfi.blob.path = a->path;
   if (handle_file_collision(opt, a->path,
        ((void*)0), ((void*)0),
        ci->ren1->branch,
        ci->ren2->branch,
        &mfi.blob, add) < 0)
    return -1;
  } else {
   char *new_path = find_path_for_conflict(opt, a->path,
        ci->ren1->branch,
        ci->ren2->branch);
   if (update_file(opt, 0, &mfi.blob,
     new_path ? new_path : a->path))
    return -1;
   free(new_path);
   if (update_stages(opt, a->path, ((void*)0), a, ((void*)0)))
    return -1;
  }

  add = &ci->ren2->dst_entry->stages[3 ^ 1];
  if (is_valid(add)) {
   add->path = mfi.blob.path = b->path;
   if (handle_file_collision(opt, b->path,
        ((void*)0), ((void*)0),
        ci->ren1->branch,
        ci->ren2->branch,
        add, &mfi.blob) < 0)
    return -1;
  } else {
   char *new_path = find_path_for_conflict(opt, b->path,
        ci->ren2->branch,
        ci->ren1->branch);
   if (update_file(opt, 0, &mfi.blob,
     new_path ? new_path : b->path))
    return -1;
   free(new_path);
   if (update_stages(opt, b->path, ((void*)0), ((void*)0), b))
    return -1;
  }
 }

 return 0;
}
