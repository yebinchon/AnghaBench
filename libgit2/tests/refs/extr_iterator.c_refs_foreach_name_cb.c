
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;


 int cl_git_pass (int ) ;
 int git__strdup (char const*) ;
 int git_vector_insert (int *,int ) ;

__attribute__((used)) static int refs_foreach_name_cb(const char *name, void *payload)
{
 git_vector *output = payload;
 cl_git_pass(git_vector_insert(output, git__strdup(name)));
 return 0;
}
