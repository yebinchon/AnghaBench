
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_oid ;


 int git_oid_cpy (int *,int ) ;
 int * git_tree_entry_byindex (int *,size_t) ;
 int git_tree_entry_id (int const*) ;
 int git_tree_entry_name (int const*) ;
 size_t git_tree_entrycount (int *) ;
 int note_error_notfound () ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int find_blob(git_oid *blob, git_tree *tree, const char *target)
{
 size_t i;
 const git_tree_entry *entry;

 for (i=0; i<git_tree_entrycount(tree); i++) {
  entry = git_tree_entry_byindex(tree, i);

  if (!strcmp(git_tree_entry_name(entry), target)) {


   git_oid_cpy(blob, git_tree_entry_id(entry));
   return 0;
  }
 }

 return note_error_notfound();
}
