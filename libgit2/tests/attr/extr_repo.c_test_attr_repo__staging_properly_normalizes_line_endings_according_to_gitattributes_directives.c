
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int GITATTR ;
 int add_to_workdir (char*,int ) ;
 int assert_proper_normalization (int *,char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int ) ;

void test_attr_repo__staging_properly_normalizes_line_endings_according_to_gitattributes_directives(void)
{
 git_index* index;

 cl_git_pass(git_repository_index(&index, g_repo));

 add_to_workdir(".gitattributes", GITATTR);

 assert_proper_normalization(index, "text.txt", "22c74203bace3c2e950278c7ab08da0fca9f4e9b");
 assert_proper_normalization(index, "huh.dunno", "22c74203bace3c2e950278c7ab08da0fca9f4e9b");
 assert_proper_normalization(index, "binary.data", "66eeff1fcbacf589e6d70aa70edd3fce5be2b37c");

 git_index_free(index);
}
