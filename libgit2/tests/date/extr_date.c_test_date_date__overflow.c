
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_time_t ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git__date_parse (scalar_t__*,char*) ;

void test_date_date__overflow(void)
{

   git_time_t d2038, d2039;


   cl_git_pass(git__date_parse(&d2038, "2038-1-1"));
   cl_git_pass(git__date_parse(&d2039, "2039-1-1"));
   cl_assert(d2038 < d2039);

}
