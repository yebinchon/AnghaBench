
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* member_1; int * username; } ;
typedef TYPE_1__ git_cred_userpass_payload ;
typedef int git_cred ;


 int GIT_CREDTYPE_USERPASS_PLAINTEXT ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_cred_free (int *) ;
 int git_cred_get_username (int *) ;
 int git_cred_userpass (int **,int *,char*,int ,TYPE_1__*) ;

void test_network_cred__stock_userpass_properly_handles_username_in_url(void)
{
 git_cred *cred;
 git_cred_userpass_payload payload = {"alice", "password"};

 cl_git_pass(git_cred_userpass(&cred, ((void*)0), ((void*)0), GIT_CREDTYPE_USERPASS_PLAINTEXT, &payload));
 cl_assert_equal_s("alice", git_cred_get_username(cred));
 git_cred_free(cred);

 cl_git_pass(git_cred_userpass(&cred, ((void*)0), "bob", GIT_CREDTYPE_USERPASS_PLAINTEXT, &payload));
 cl_assert_equal_s("alice", git_cred_get_username(cred));
 git_cred_free(cred);

 payload.username = ((void*)0);
 cl_git_pass(git_cred_userpass(&cred, ((void*)0), "bob", GIT_CREDTYPE_USERPASS_PLAINTEXT, &payload));
 cl_assert_equal_s("bob", git_cred_get_username(cred));
 git_cred_free(cred);
}
