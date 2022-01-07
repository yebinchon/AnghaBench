
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mode; int id; } ;
struct TYPE_6__ {scalar_t__ mode; int id; } ;
struct TYPE_7__ {TYPE_1__ new_file; TYPE_2__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;


 scalar_t__ GIT_FILEMODE_COMMIT ;
 scalar_t__ git_oid_equal (int *,int *) ;
 scalar_t__ git_oid_is_zero (int *) ;

__attribute__((used)) static bool delta_is_unchanged(const git_diff_delta *delta)
{
 if (git_oid_is_zero(&delta->old_file.id) &&
  git_oid_is_zero(&delta->new_file.id))
  return 1;

 if (delta->old_file.mode == GIT_FILEMODE_COMMIT ||
  delta->new_file.mode == GIT_FILEMODE_COMMIT)
  return 0;

 if (git_oid_equal(&delta->old_file.id, &delta->new_file.id))
  return 1;

 return 0;
}
