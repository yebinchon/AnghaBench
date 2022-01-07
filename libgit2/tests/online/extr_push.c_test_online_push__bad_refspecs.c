
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** member_0; int member_1; } ;
typedef TYPE_1__ git_strarray ;


 scalar_t__ _remote ;
 int cl_git_fail (int ) ;
 int git_remote_upload (scalar_t__,TYPE_1__*,int *) ;

void test_online_push__bad_refspecs(void)
{



 char *specs = {
  "b6:b6",
 };
 git_strarray arr = {
  &specs,
  1,
 };

 if (_remote) {
  cl_git_fail(git_remote_upload(_remote, &arr, ((void*)0)));
 }
}
