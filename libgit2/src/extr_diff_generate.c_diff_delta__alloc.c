
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int pool; } ;
struct TYPE_14__ {TYPE_3__ base; } ;
typedef TYPE_4__ git_diff_generated ;
struct TYPE_12__ {int * path; } ;
struct TYPE_11__ {int * path; } ;
struct TYPE_15__ {int status; TYPE_2__ old_file; TYPE_1__ new_file; } ;
typedef TYPE_5__ git_diff_delta ;
typedef int git_delta_t ;


 scalar_t__ DIFF_FLAG_IS_SET (TYPE_4__*,int ) ;


 int GIT_DIFF_REVERSE ;
 TYPE_5__* git__calloc (int,int) ;
 int git__free (TYPE_5__*) ;
 int * git_pool_strdup (int *,char const*) ;

__attribute__((used)) static git_diff_delta *diff_delta__alloc(
 git_diff_generated *diff,
 git_delta_t status,
 const char *path)
{
 git_diff_delta *delta = git__calloc(1, sizeof(git_diff_delta));
 if (!delta)
  return ((void*)0);

 delta->old_file.path = git_pool_strdup(&diff->base.pool, path);
 if (delta->old_file.path == ((void*)0)) {
  git__free(delta);
  return ((void*)0);
 }

 delta->new_file.path = delta->old_file.path;

 if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_REVERSE)) {
  switch (status) {
  case 129: status = 128; break;
  case 128: status = 129; break;
  default: break;
  }
 }
 delta->status = status;

 return delta;
}
