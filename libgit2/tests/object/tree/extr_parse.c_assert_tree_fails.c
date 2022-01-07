
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;


 int GIT_OBJECT_TREE ;
 int cl_git_fail (int ) ;
 int git_object__from_raw (int **,char const*,size_t,int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void assert_tree_fails(const char *data, size_t datalen)
{
 git_object *object;
 if (!datalen)
  datalen = strlen(data);
 cl_git_fail(git_object__from_raw(&object, data, datalen, GIT_OBJECT_TREE));
}
