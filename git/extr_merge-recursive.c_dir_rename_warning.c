
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rename {char* branch; TYPE_3__* pair; int dir_rename_original_dest; } ;
struct merge_options {char* branch1; char* branch2; } ;
struct TYPE_6__ {TYPE_2__* two; TYPE_1__* one; } ;
struct TYPE_5__ {int path; } ;
struct TYPE_4__ {int path; } ;


 int output (struct merge_options*,int,char const*,int ,char*,char const*,char const*,...) ;

__attribute__((used)) static void dir_rename_warning(const char *msg,
          int is_add,
          int clean,
          struct merge_options *opt,
          struct rename *ren)
{
 const char *other_branch;
 other_branch = (ren->branch == opt->branch1 ?
   opt->branch2 : opt->branch1);
 if (is_add) {
  output(opt, clean ? 2 : 1, msg,
         ren->pair->one->path, ren->branch,
         other_branch, ren->pair->two->path);
  return;
 }
 output(opt, clean ? 2 : 1, msg,
        ren->pair->one->path, ren->dir_rename_original_dest, ren->branch,
        other_branch, ren->pair->two->path);
}
