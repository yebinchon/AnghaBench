
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture (char const*) ;
 char const* cl_git_path_url (int ) ;

const char* cl_git_fixture_url(const char *fixturename)
{
 return cl_git_path_url(cl_fixture(fixturename));
}
