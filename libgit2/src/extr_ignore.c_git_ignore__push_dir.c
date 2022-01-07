
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
struct TYPE_5__ {TYPE_4__ dir; int ign_path; int depth; } ;
typedef TYPE_1__ git_ignores ;


 int GIT_IGNORE_FILE ;
 scalar_t__ git_buf_joinpath (TYPE_4__*,int ,char const*) ;
 int push_ignore_file (TYPE_1__*,int *,int ,int ) ;

int git_ignore__push_dir(git_ignores *ign, const char *dir)
{
 if (git_buf_joinpath(&ign->dir, ign->dir.ptr, dir) < 0)
  return -1;

 ign->depth++;

 return push_ignore_file(
  ign, &ign->ign_path, ign->dir.ptr, GIT_IGNORE_FILE);
}
