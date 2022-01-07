
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ new_lines; scalar_t__ old_lines; } ;
typedef TYPE_1__ git_diff_hunk ;


 int GIT_UNUSED (void*) ;

__attribute__((used)) static int skip_change(
 const git_diff_hunk *hunk,
 void *payload)
{
 GIT_UNUSED(payload);

 return (hunk->new_lines == hunk->old_lines) ? 1 : 0;
}
