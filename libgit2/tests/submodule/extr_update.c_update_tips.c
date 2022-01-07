
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_submodule_cb_payload {int update_tips_called; } ;
typedef char git_oid ;


 int GIT_UNUSED (char const*) ;

__attribute__((used)) static int update_tips(const char *refname, const git_oid *a, const git_oid *b, void *data)
{
 struct update_submodule_cb_payload *update_payload = data;

 GIT_UNUSED(refname);
 GIT_UNUSED(a);
 GIT_UNUSED(b);

 update_payload->update_tips_called = 1;

 return 1;
}
