
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_diff_line ;
typedef void git_diff_hunk ;
typedef void git_diff_delta ;


 int GIT_UNUSED (void*) ;
 int cl_fail (char*) ;

__attribute__((used)) static int line_cb(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 const git_diff_line *line,
 void *payload)
{
 GIT_UNUSED(delta);
 GIT_UNUSED(hunk);
 GIT_UNUSED(line);
 GIT_UNUSED(payload);

 cl_fail("did not expect line callback");
 return 0;
}
