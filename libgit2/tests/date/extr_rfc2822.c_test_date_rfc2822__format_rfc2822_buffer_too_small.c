
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_1; } ;
typedef TYPE_1__ git_time ;
typedef int buf ;


 int GIT_DATE_RFC2822_SZ ;
 int cl_git_fail (int ) ;
 int git__date_rfc2822_fmt (char*,int,TYPE_1__*) ;

void test_date_rfc2822__format_rfc2822_buffer_too_small(void)
{

 git_time t = {1397031663 + 86400, 0};
 char buf[GIT_DATE_RFC2822_SZ-1];

 cl_git_fail(git__date_rfc2822_fmt(buf, sizeof(buf), &t));
}
