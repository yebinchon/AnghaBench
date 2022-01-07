
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* member_1; } ;
typedef TYPE_1__ git_cred_userpass_payload ;
typedef int git_cred ;


 int GIT_CREDTYPE_USERPASS_PLAINTEXT ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_cred_free (int *) ;
 int git_cred_userpass (int **,int *,int *,int ,TYPE_1__*) ;

void test_network_cred__stock_userpass_validates_that_method_is_allowed(void)
{
 git_cred *cred;
 git_cred_userpass_payload payload = {"user", "pass"};

 cl_git_fail(git_cred_userpass(&cred, ((void*)0), ((void*)0), 0, &payload));
 cl_git_pass(git_cred_userpass(&cred, ((void*)0), ((void*)0), GIT_CREDTYPE_USERPASS_PLAINTEXT, &payload));
 git_cred_free(cred);
}
