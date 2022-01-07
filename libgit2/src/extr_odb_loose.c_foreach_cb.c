
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct foreach_state {int dummy; } ;
typedef int git_buf ;


 int foreach_object_dir_cb ;
 int git_buf_cstr (int *) ;
 int git_path_direach (int *,int ,int ,struct foreach_state*) ;
 int git_path_isdir (int ) ;

__attribute__((used)) static int foreach_cb(void *_state, git_buf *path)
{
 struct foreach_state *state = (struct foreach_state *) _state;


 if (!git_path_isdir(git_buf_cstr(path)))
  return 0;

 return git_path_direach(path, 0, foreach_object_dir_cb, state);
}
