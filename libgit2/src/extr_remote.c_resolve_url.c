
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* resolve_url ) (int *,char const*,int,int ) ;int payload; } ;
typedef TYPE_1__ git_remote_callbacks ;
typedef int git_buf ;


 int GIT_PASSTHROUGH ;
 int git_buf_clear (int *) ;
 int git_buf_sanitize (int *) ;
 int git_buf_sets (int *,char const*) ;
 int git_error_set_after_callback_function (int,char*) ;
 int stub1 (int *,char const*,int,int ) ;

__attribute__((used)) static int resolve_url(git_buf *resolved_url, const char *url, int direction, const git_remote_callbacks *callbacks)
{
 int status;

 if (callbacks && callbacks->resolve_url) {
  git_buf_clear(resolved_url);
  status = callbacks->resolve_url(resolved_url, url, direction, callbacks->payload);
  if (status != GIT_PASSTHROUGH) {
   git_error_set_after_callback_function(status, "git_resolve_url_cb");
   git_buf_sanitize(resolved_url);
   return status;
  }
 }

 return git_buf_sets(resolved_url, url);
}
