
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_diff_hunk ;
typedef void git_diff_delta ;


 int GIT_UNUSED (void*) ;
 int cl_fail (char*) ;

__attribute__((used)) static int hunk_cb(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 void *payload)
{
 GIT_UNUSED(delta);
 GIT_UNUSED(hunk);
 GIT_UNUSED(payload);

 cl_fail("did not expect hunk callback");
 return 0;
}
