
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* username; int member_0; } ;
typedef TYPE_1__ git_cred_userpass_payload ;


 int cl_git_fail (int ) ;
 int git_cred_userpass (int *,int *,int *,int ,TYPE_1__*) ;

void test_network_cred__stock_userpass_validates_args(void)
{
 git_cred_userpass_payload payload = {0};

 cl_git_fail(git_cred_userpass(((void*)0), ((void*)0), ((void*)0), 0, ((void*)0)));

 payload.username = "user";
 cl_git_fail(git_cred_userpass(((void*)0), ((void*)0), ((void*)0), 0, &payload));

 payload.username = ((void*)0);
 payload.username = "pass";
 cl_git_fail(git_cred_userpass(((void*)0), ((void*)0), ((void*)0), 0, &payload));
}
