
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_strmap ;
typedef int git_iterator ;
struct TYPE_8__ {char* path; int id; int mode; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_config ;


 int GIT_ITEROVER ;
 int GIT_SUBMODULE_STATUS__HEAD_NOT_SUBMODULE ;
 scalar_t__ S_ISGITLINK (int ) ;
 int free_submodule_names (int *) ;
 int git_iterator_advance (TYPE_2__ const**,int *) ;
 int git_iterator_for_tree (int **,int *,int *) ;
 int git_iterator_free (int *) ;
 void* git_strmap_get (int *,char*) ;
 int git_submodule_free (TYPE_1__*) ;
 int git_tree_owner (int *) ;
 int load_submodule_names (int **,int ,int *) ;
 int submodule_get_or_create (TYPE_1__**,int ,int *,char const*) ;
 int submodule_update_from_head_data (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int submodules_from_head(git_strmap *map, git_tree *head, git_config *cfg)
{
 int error;
 git_iterator *i = ((void*)0);
 const git_index_entry *entry;
 git_strmap *names;

 if ((error = load_submodule_names(&names, git_tree_owner(head), cfg)))
  goto done;

 if ((error = git_iterator_for_tree(&i, head, ((void*)0))) < 0)
  goto done;

 while (!(error = git_iterator_advance(&entry, i))) {
  git_submodule *sm;

  if ((sm = git_strmap_get(map, entry->path)) != ((void*)0)) {
   if (S_ISGITLINK(entry->mode))
    submodule_update_from_head_data(sm, entry->mode, &entry->id);
   else
    sm->flags |= GIT_SUBMODULE_STATUS__HEAD_NOT_SUBMODULE;
  } else if (S_ISGITLINK(entry->mode)) {
   const char *name;

   if ((name = git_strmap_get(names, entry->path)) == ((void*)0))
    name = entry->path;

   if (!submodule_get_or_create(&sm, git_tree_owner(head), map, name)) {
    submodule_update_from_head_data(
     sm, entry->mode, &entry->id);
    git_submodule_free(sm);
   }
  }
 }

 if (error == GIT_ITEROVER)
  error = 0;

done:
 git_iterator_free(i);
 free_submodule_names(names);

 return error;
}
