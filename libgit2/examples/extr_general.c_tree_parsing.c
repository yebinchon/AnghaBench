
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_object ;


 int git_object_free (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int * git_tree_entry_byindex (int *,int ) ;
 int * git_tree_entry_byname (int *,char*) ;
 char* git_tree_entry_name (int const*) ;
 int git_tree_entry_to_object (int **,int *,int const*) ;
 size_t git_tree_entrycount (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int *,int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void tree_parsing(git_repository *repo)
{
 const git_tree_entry *entry;
 size_t cnt;
 git_object *obj;
 git_tree *tree;
 git_oid oid;

 printf("\n*Tree Parsing*\n");




 git_oid_fromstr(&oid, "f60079018b664e4e79329a7ef9559c8d9e0378d1");
 git_tree_lookup(&tree, repo, &oid);





 cnt = git_tree_entrycount(tree);
 printf("tree entries: %d\n", (int) cnt);

 entry = git_tree_entry_byindex(tree, 0);
 printf("Entry name: %s\n", git_tree_entry_name(entry));





 entry = git_tree_entry_byname(tree, "README");
 git_tree_entry_name(entry);






 git_tree_entry_to_object(&obj, repo, entry);




 git_object_free(obj);
 git_tree_free(tree);
}
