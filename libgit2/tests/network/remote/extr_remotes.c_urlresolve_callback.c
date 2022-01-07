
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; } ;
typedef TYPE_1__ git_buf ;


 int GIT_DIRECTION_FETCH ;
 int GIT_DIRECTION_PUSH ;
 int GIT_OK ;
 int cl_assert (int) ;
 int git_buf_sets (TYPE_1__*,char*) ;
 scalar_t__ strcmp (void*,char*) ;

__attribute__((used)) static int urlresolve_callback(git_buf *url_resolved, const char *url, int direction, void *payload)
{
 cl_assert(strcmp(url, "git://github.com/libgit2/libgit2") == 0);
 cl_assert(strcmp(payload, "payload") == 0);
 cl_assert(url_resolved->size == 0);

 if (direction == GIT_DIRECTION_PUSH)
  git_buf_sets(url_resolved, "pushresolve");
 if (direction == GIT_DIRECTION_FETCH)
  git_buf_sets(url_resolved, "fetchresolve");

 return GIT_OK;
}
