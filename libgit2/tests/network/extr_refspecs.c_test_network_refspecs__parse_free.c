
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_refspec ;


 int cl_assert (int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_refspec_free (int *) ;
 int git_refspec_parse (int **,char*,int) ;

void test_network_refspecs__parse_free(void)
{
 git_refspec *spec = ((void*)0);

 cl_git_fail(git_refspec_parse(&spec, "", 0));
 cl_git_fail(git_refspec_parse(&spec, ":::", 0));
 cl_git_pass(git_refspec_parse(&spec, "HEAD:", 1));

 cl_assert(spec != ((void*)0));
 git_refspec_free(spec);
}
