
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;


 int GIT_UNUSED (size_t) ;
 int git_vector_insert (int *,int ) ;
 int strdup (char const*) ;

__attribute__((used)) static void collect_progress(
 const char *path,
 size_t completed_steps,
 size_t total_steps,
 void *payload)
{
 git_vector *paths = payload;

 GIT_UNUSED(completed_steps);
 GIT_UNUSED(total_steps);

 if (path == ((void*)0))
  return;

 git_vector_insert(paths, strdup(path));
}
