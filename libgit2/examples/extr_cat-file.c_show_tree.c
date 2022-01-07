
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oidstr ;
typedef int git_tree_entry ;
typedef int git_tree ;


 int GIT_OID_HEXSZ ;
 char* git_object_type2string (int ) ;
 int git_oid_tostr (char*,int,int ) ;
 int * git_tree_entry_byindex (int const*,size_t) ;
 int git_tree_entry_filemode (int const*) ;
 int git_tree_entry_id (int const*) ;
 char* git_tree_entry_name (int const*) ;
 int git_tree_entry_type (int const*) ;
 scalar_t__ git_tree_entrycount (int const*) ;
 int printf (char*,int,char*,char*,char*) ;

__attribute__((used)) static void show_tree(const git_tree *tree)
{
 size_t i, max_i = (int)git_tree_entrycount(tree);
 char oidstr[GIT_OID_HEXSZ + 1];
 const git_tree_entry *te;

 for (i = 0; i < max_i; ++i) {
  te = git_tree_entry_byindex(tree, i);

  git_oid_tostr(oidstr, sizeof(oidstr), git_tree_entry_id(te));

  printf("%06o %s %s\t%s\n",
   git_tree_entry_filemode(te),
   git_object_type2string(git_tree_entry_type(te)),
   oidstr, git_tree_entry_name(te));
 }
}
