
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_submodule ;


 int GIT_UNUSED (void*) ;

__attribute__((used)) static int fake_submod_cb(git_submodule *sm, const char *n, void *p)
{
 GIT_UNUSED(sm); GIT_UNUSED(n); GIT_UNUSED(p);
 return 0;
}
