
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;

__attribute__((used)) static void cleanup_local_repo(void *path)
{
 cl_fixture_cleanup((char *)path);
}
