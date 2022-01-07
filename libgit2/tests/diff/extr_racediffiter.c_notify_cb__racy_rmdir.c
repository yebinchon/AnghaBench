
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int first_time; int basic_payload; int dir; } ;
typedef TYPE_1__ racy_payload ;
typedef int git_diff_delta ;
typedef int git_diff ;


 int cl_must_pass (int ) ;
 int notify_cb__basic (int const*,int const*,char const*,int ) ;
 int p_rmdir (int ) ;

__attribute__((used)) static int notify_cb__racy_rmdir(
 const git_diff *diff_so_far,
 const git_diff_delta *delta_to_add,
 const char *matched_pathspec,
 void *payload)
{
 racy_payload *pay = (racy_payload *)payload;

 if (pay->first_time) {
  cl_must_pass(p_rmdir(pay->dir));
  pay->first_time = 0;
 }

 return notify_cb__basic(diff_so_far, delta_to_add, matched_pathspec, pay->basic_payload);
}
