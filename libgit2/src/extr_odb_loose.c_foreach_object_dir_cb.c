
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct foreach_state {int data; int (* cb ) (int *,int ) ;scalar_t__ dir_len; } ;
typedef int git_oid ;
struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ git_buf ;


 scalar_t__ filename_to_oid (int *,scalar_t__) ;
 int git_error_set_after_callback_function (int ,char*) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static int foreach_object_dir_cb(void *_state, git_buf *path)
{
 git_oid oid;
 struct foreach_state *state = (struct foreach_state *) _state;

 if (filename_to_oid(&oid, path->ptr + state->dir_len) < 0)
  return 0;

 return git_error_set_after_callback_function(
  state->cb(&oid, state->data), "git_odb_foreach");
}
