
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rename_conflict_info {struct rename* ren1; } ;
struct rename {char* branch; TYPE_1__* pair; } ;
struct merge_options {char* branch1; char* branch2; TYPE_3__* repo; TYPE_2__* priv; } ;
struct diff_filespec {int * path; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {scalar_t__ call_depth; } ;
struct TYPE_4__ {struct diff_filespec* two; struct diff_filespec* one; } ;


 int _ (char*) ;
 scalar_t__ handle_change_delete (struct merge_options*,int *,int *,struct diff_filespec const*,struct diff_filespec const*,char const*,char const*,int ,int ) ;
 int remove_file_from_index (int ,int *) ;
 int update_stages (struct merge_options*,int *,int *,struct diff_filespec const*,struct diff_filespec const*) ;

__attribute__((used)) static int handle_rename_delete(struct merge_options *opt,
    struct rename_conflict_info *ci)
{
 const struct rename *ren = ci->ren1;
 const struct diff_filespec *orig = ren->pair->one;
 const struct diff_filespec *dest = ren->pair->two;
 const char *rename_branch = ren->branch;
 const char *delete_branch = (opt->branch1 == ren->branch ?
         opt->branch2 : opt->branch1);

 if (handle_change_delete(opt,
     opt->priv->call_depth ? orig->path : dest->path,
     opt->priv->call_depth ? ((void*)0) : orig->path,
     orig, dest,
     rename_branch, delete_branch,
     _("rename"), _("renamed")))
  return -1;

 if (opt->priv->call_depth)
  return remove_file_from_index(opt->repo->index, dest->path);
 else
  return update_stages(opt, dest->path, ((void*)0),
         rename_branch == opt->branch1 ? dest : ((void*)0),
         rename_branch == opt->branch1 ? ((void*)0) : dest);
}
