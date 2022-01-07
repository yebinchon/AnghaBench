
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_oid ;


 int GIT_UNUSED (void*) ;
 int cl_fail (char*) ;

int update_tips_fail_on_call(const char *ref, const git_oid *old, const git_oid *new, void *data)
{
 GIT_UNUSED(ref);
 GIT_UNUSED(old);
 GIT_UNUSED(new);
 GIT_UNUSED(data);

 cl_fail("update tips called");
 return 0;
}
