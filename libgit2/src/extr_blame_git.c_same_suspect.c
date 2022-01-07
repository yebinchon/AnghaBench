
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; int commit; } ;
typedef TYPE_1__ git_blame__origin ;


 int git_commit_id (int ) ;
 scalar_t__ git_oid_cmp (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool same_suspect(git_blame__origin *a, git_blame__origin *b)
{
 if (a == b)
  return 1;
 if (git_oid_cmp(git_commit_id(a->commit), git_commit_id(b->commit)))
  return 0;
 return 0 == strcmp(a->path, b->path);
}
