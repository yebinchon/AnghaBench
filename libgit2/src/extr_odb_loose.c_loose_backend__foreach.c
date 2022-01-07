
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct foreach_state {int dir_len; void* data; scalar_t__ cb; } ;
typedef int state ;
struct TYPE_2__ {char* objects_dir; } ;
typedef TYPE_1__ loose_backend ;
typedef scalar_t__ git_odb_foreach_cb ;
typedef int git_odb_backend ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int assert (int) ;
 int foreach_cb ;
 int git_buf_dispose (int *) ;
 int git_buf_len (int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_sets (int *,char*) ;
 int git_path_direach (int *,int ,int ,struct foreach_state*) ;
 int git_path_to_dir (int *) ;
 int memset (struct foreach_state*,int ,int) ;

__attribute__((used)) static int loose_backend__foreach(git_odb_backend *_backend, git_odb_foreach_cb cb, void *data)
{
 char *objects_dir;
 int error;
 git_buf buf = GIT_BUF_INIT;
 struct foreach_state state;
 loose_backend *backend = (loose_backend *) _backend;

 assert(backend && cb);

 objects_dir = backend->objects_dir;

 git_buf_sets(&buf, objects_dir);
 git_path_to_dir(&buf);
 if (git_buf_oom(&buf))
  return -1;

 memset(&state, 0, sizeof(state));
 state.cb = cb;
 state.data = data;
 state.dir_len = git_buf_len(&buf);

 error = git_path_direach(&buf, 0, foreach_cb, &state);

 git_buf_dispose(&buf);

 return error;
}
