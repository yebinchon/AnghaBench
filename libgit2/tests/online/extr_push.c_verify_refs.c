
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote_head ;
typedef int git_remote ;
typedef int expected_ref ;


 int git_remote_ls (int const***,size_t*,int *) ;
 int verify_remote_refs (int const**,size_t,int *,size_t) ;

__attribute__((used)) static void verify_refs(git_remote *remote, expected_ref expected_refs[], size_t expected_refs_len)
{
 const git_remote_head **actual_refs;
 size_t actual_refs_len;

 git_remote_ls(&actual_refs, &actual_refs_len, remote);
 verify_remote_refs(actual_refs, actual_refs_len, expected_refs, expected_refs_len);
}
