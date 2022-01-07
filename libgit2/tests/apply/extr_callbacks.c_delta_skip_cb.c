
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; } ;
struct TYPE_5__ {TYPE_1__ old_file; } ;
typedef TYPE_2__ git_diff_delta ;


 int GIT_UNUSED (void*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int delta_skip_cb(const git_diff_delta *delta, void *payload)
{
 GIT_UNUSED(payload);

 if (!strcmp(delta->old_file.path, "asparagus.txt"))
  return 1;

 return 0;
}
