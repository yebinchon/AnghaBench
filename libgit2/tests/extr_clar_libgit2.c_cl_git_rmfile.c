
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_must_pass (int ) ;
 int p_unlink (char const*) ;

void cl_git_rmfile(const char *filename)
{
 cl_must_pass(p_unlink(filename));
}
