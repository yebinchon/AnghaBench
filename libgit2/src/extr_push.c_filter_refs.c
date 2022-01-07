
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_remote_head ;
struct TYPE_4__ {int refs; } ;
typedef TYPE_1__ git_remote ;


 scalar_t__ git_remote_ls (int const***,size_t*,TYPE_1__*) ;
 int git_vector_clear (int *) ;
 scalar_t__ git_vector_insert (int *,void*) ;

__attribute__((used)) static int filter_refs(git_remote *remote)
{
 const git_remote_head **heads;
 size_t heads_len, i;

 git_vector_clear(&remote->refs);

 if (git_remote_ls(&heads, &heads_len, remote) < 0)
  return -1;

 for (i = 0; i < heads_len; i++) {
  if (git_vector_insert(&remote->refs, (void *)heads[i]) < 0)
   return -1;
 }

 return 0;
}
