
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 char* git__strdup (char const*) ;
 int git_vector_insert (int *,char*) ;

__attribute__((used)) static int cb__reflist_add(const char *ref, void *data)
{
 char *name = git__strdup(ref);
 GIT_ERROR_CHECK_ALLOC(name);
 return git_vector_insert((git_vector *)data, name);
}
