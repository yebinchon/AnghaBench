
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_cred ;


 unsigned int GIT_CREDTYPE_USERNAME ;
 int GIT_EUSER ;
 int GIT_UNUSED (void*) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (unsigned int,unsigned int) ;

__attribute__((used)) static int check_ssh_auth_methods(git_cred **cred, const char *url, const char *username_from_url,
      unsigned int allowed_types, void *data)
{
 int *with_user = (int *) data;
 GIT_UNUSED(cred); GIT_UNUSED(url); GIT_UNUSED(username_from_url); GIT_UNUSED(data);

 if (!*with_user)
  cl_assert_equal_i(GIT_CREDTYPE_USERNAME, allowed_types);
 else
  cl_assert(!(allowed_types & GIT_CREDTYPE_USERNAME));

 return GIT_EUSER;
}
