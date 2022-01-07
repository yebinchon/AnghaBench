
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;
typedef int git_remote_head ;
typedef int git_remote ;


 scalar_t__ git_remote_ls (int const***,size_t*,int *) ;
 scalar_t__ git_vector_init (int *,size_t,int ) ;
 scalar_t__ git_vector_insert (int *,int *) ;
 int remote_head_cmp ;

__attribute__((used)) static int ls_to_vector(git_vector *out, git_remote *remote)
{
 git_remote_head **heads;
 size_t heads_len, i;

 if (git_remote_ls((const git_remote_head ***)&heads, &heads_len, remote) < 0)
  return -1;

 if (git_vector_init(out, heads_len, remote_head_cmp) < 0)
  return -1;

 for (i = 0; i < heads_len; i++) {
  if (git_vector_insert(out, heads[i]) < 0)
   return -1;
 }

 return 0;
}
