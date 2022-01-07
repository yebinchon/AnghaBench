
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_diff_line ;
typedef int git_diff_hunk ;
struct TYPE_6__ {int mode; } ;
struct TYPE_7__ {TYPE_1__ new_file; } ;
typedef TYPE_2__ git_diff_delta ;
struct TYPE_8__ {int (* print_cb ) (TYPE_2__ const*,int const*,int const*,int ) ;int payload; } ;
typedef TYPE_3__ diff_print_info ;


 scalar_t__ S_ISDIR (int ) ;
 int stub1 (TYPE_2__ const*,int const*,int const*,int ) ;

__attribute__((used)) static int diff_print_patch_line(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 const git_diff_line *line,
 void *data)
{
 diff_print_info *pi = data;

 if (S_ISDIR(delta->new_file.mode))
  return 0;

 return pi->print_cb(delta, hunk, line, pi->payload);
}
