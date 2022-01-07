
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef int git_vector ;
typedef int git_iterator ;
struct TYPE_32__ {char const* path; scalar_t__ mode; } ;
typedef TYPE_4__ git_index_entry ;
struct TYPE_31__ {char const* path; scalar_t__ mode; } ;
struct TYPE_30__ {scalar_t__ mode; } ;
struct TYPE_33__ {scalar_t__ status; TYPE_3__ old_file; TYPE_2__ new_file; } ;
typedef TYPE_6__ git_diff_delta ;
struct TYPE_34__ {TYPE_1__* diff; } ;
typedef TYPE_7__ checkout_data ;
struct TYPE_29__ {int (* strcomp ) (char const*,char const*) ;int (* pfxcomp ) (char const*,char const*) ;} ;


 scalar_t__ GIT_DELTA_TYPECHANGE ;
 scalar_t__ GIT_FILEMODE_COMMIT ;
 scalar_t__ GIT_FILEMODE_TREE ;
 int GIT_ITEROVER ;
 int checkout_action_no_wd (int*,TYPE_7__*,TYPE_6__*) ;
 int checkout_action_wd_only (TYPE_7__*,int *,TYPE_4__ const**,int *) ;
 int checkout_action_with_wd (int*,TYPE_7__*,TYPE_6__*,int *,TYPE_4__ const*) ;
 int checkout_action_with_wd_blocker (int*,TYPE_7__*,TYPE_6__*,TYPE_4__ const*) ;
 int checkout_action_with_wd_dir (int*,TYPE_7__*,TYPE_6__*,int *,TYPE_4__ const*) ;
 int checkout_action_with_wd_dir_empty (int*,TYPE_7__*,TYPE_6__*) ;
 scalar_t__ checkout_is_empty_dir (TYPE_7__*,char*) ;
 int git_iterator_advance (TYPE_4__ const**,int *) ;
 int git_iterator_advance_into (TYPE_4__ const**,int *) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int checkout_action(
 int *action,
 checkout_data *data,
 git_diff_delta *delta,
 git_iterator *workdir,
 const git_index_entry **wditem,
 git_vector *pathspec)
{
 int cmp = -1, error;
 int (*strcomp)(const char *, const char *) = data->diff->strcomp;
 int (*pfxcomp)(const char *str, const char *pfx) = data->diff->pfxcomp;
 int (*advance)(const git_index_entry **, git_iterator *) = ((void*)0);



 while (1) {
  const git_index_entry *wd = *wditem;

  if (!wd)
   return checkout_action_no_wd(action, data, delta);

  cmp = strcomp(wd->path, delta->old_file.path);
  if (cmp < 0) {
   cmp = pfxcomp(delta->old_file.path, wd->path);

   if (cmp == 0) {
    if (wd->mode == GIT_FILEMODE_TREE) {

     error = git_iterator_advance_into(wditem, workdir);
     if (error < 0 && error != GIT_ITEROVER)
      goto done;
     continue;
    }


    if (delta->old_file.path[strlen(wd->path)] == '/') {
     error = checkout_action_with_wd_blocker(
      action, data, delta, wd);
     advance = git_iterator_advance;
     goto done;
    }
   }


   error = checkout_action_wd_only(data, workdir, wditem, pathspec);
   if (error && error != GIT_ITEROVER)
    goto done;
   continue;
  }

  if (cmp == 0) {

   error = checkout_action_with_wd(action, data, delta, workdir, wd);
   advance = git_iterator_advance;
   goto done;
  }

  cmp = pfxcomp(wd->path, delta->old_file.path);

  if (cmp == 0) {
   if (wd->path[strlen(delta->old_file.path)] != '/')
    return checkout_action_no_wd(action, data, delta);

   if (delta->status == GIT_DELTA_TYPECHANGE) {
    if (delta->old_file.mode == GIT_FILEMODE_TREE) {
     error = checkout_action_with_wd(action, data, delta, workdir, wd);
     advance = git_iterator_advance_into;
     goto done;
    }

    if (delta->new_file.mode == GIT_FILEMODE_TREE ||
     delta->new_file.mode == GIT_FILEMODE_COMMIT ||
     delta->old_file.mode == GIT_FILEMODE_COMMIT)
    {
     error = checkout_action_with_wd(action, data, delta, workdir, wd);
     advance = git_iterator_advance;
     goto done;
    }
   }

   return checkout_is_empty_dir(data, wd->path) ?
    checkout_action_with_wd_dir_empty(action, data, delta) :
    checkout_action_with_wd_dir(action, data, delta, workdir, wd);
  }


  return checkout_action_no_wd(action, data, delta);
 }

done:
 if (!error && advance != ((void*)0) &&
  (error = advance(wditem, workdir)) < 0) {
  *wditem = ((void*)0);
  if (error == GIT_ITEROVER)
   error = 0;
 }

 return error;
}
