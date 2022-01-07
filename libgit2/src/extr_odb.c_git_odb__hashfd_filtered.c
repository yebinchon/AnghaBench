
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object_t ;
typedef int git_filter_list ;
typedef int git_file ;
struct TYPE_7__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_filter_list_apply_to_data (TYPE_1__*,int *,TYPE_1__*) ;
 int git_futils_readbuffer_fd (TYPE_1__*,int ,size_t) ;
 int git_odb__hashfd (int *,int ,size_t,int ) ;
 int git_odb_hash (int *,int ,int ,int ) ;

int git_odb__hashfd_filtered(
 git_oid *out, git_file fd, size_t size, git_object_t type, git_filter_list *fl)
{
 int error;
 git_buf raw = GIT_BUF_INIT;

 if (!fl)
  return git_odb__hashfd(out, fd, size, type);





 if (!(error = git_futils_readbuffer_fd(&raw, fd, size))) {
  git_buf post = GIT_BUF_INIT;

  error = git_filter_list_apply_to_data(&post, fl, &raw);

  git_buf_dispose(&raw);

  if (!error)
   error = git_odb_hash(out, post.ptr, post.size, type);

  git_buf_dispose(&post);
 }

 return error;
}
