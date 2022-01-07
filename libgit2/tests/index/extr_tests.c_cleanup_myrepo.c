
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (void*) ;
 int cl_fixture_cleanup (char*) ;

__attribute__((used)) static void cleanup_myrepo(void *opaque)
{
 GIT_UNUSED(opaque);
 cl_fixture_cleanup("myrepo");
}
