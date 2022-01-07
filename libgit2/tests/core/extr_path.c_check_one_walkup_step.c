
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t expect_idx; int ** expect; int cancel_after; } ;
typedef TYPE_1__ check_walkup_info ;


 int CANCEL_VALUE ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (int *,char const*) ;

__attribute__((used)) static int check_one_walkup_step(void *ref, const char *path)
{
 check_walkup_info *info = (check_walkup_info *)ref;

 if (!info->cancel_after) {
  cl_assert_equal_s(info->expect[info->expect_idx], "[CANCEL]");
  return CANCEL_VALUE;
 }
 info->cancel_after--;

 cl_assert(info->expect[info->expect_idx] != ((void*)0));
 cl_assert_equal_s(info->expect[info->expect_idx], path);
 info->expect_idx++;

 return 0;
}
