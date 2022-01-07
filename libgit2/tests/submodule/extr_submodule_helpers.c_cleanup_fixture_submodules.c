
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (void*) ;
 int cl_git_sandbox_cleanup () ;

__attribute__((used)) static void cleanup_fixture_submodules(void *payload)
{
 cl_git_sandbox_cleanup();

 if (payload)
  cl_fixture_cleanup(payload);
}
