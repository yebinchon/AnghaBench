
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_repository ;


 int GIT_EEXISTS ;
 scalar_t__ S_ISDIR (int ) ;
 int git__ishex (int ) ;
 int * git_tree_entry_byindex (int *,size_t) ;
 int git_tree_entry_filemode (int const*) ;
 int git_tree_entry_id (int const*) ;
 int git_tree_entry_name (int const*) ;
 size_t git_tree_entrycount (int *) ;
 int git_tree_lookup (int **,int *,int ) ;
 int note_error_notfound () ;
 int strcmp (int ,char const*) ;
 int strlen (int ) ;
 int strncmp (int ,char const*,int) ;

__attribute__((used)) static int find_subtree_in_current_level(
 git_tree **out,
 git_repository *repo,
 git_tree *parent,
 const char *annotated_object_sha,
 int fanout)
{
 size_t i;
 const git_tree_entry *entry;

 *out = ((void*)0);

 if (parent == ((void*)0))
  return note_error_notfound();

 for (i = 0; i < git_tree_entrycount(parent); i++) {
  entry = git_tree_entry_byindex(parent, i);

  if (!git__ishex(git_tree_entry_name(entry)))
   continue;

  if (S_ISDIR(git_tree_entry_filemode(entry))
   && strlen(git_tree_entry_name(entry)) == 2
   && !strncmp(git_tree_entry_name(entry), annotated_object_sha + fanout, 2))
   return git_tree_lookup(out, repo, git_tree_entry_id(entry));


  if (!strcmp(git_tree_entry_name(entry), annotated_object_sha + fanout))
   return GIT_EEXISTS;
 }

 return note_error_notfound();
}
