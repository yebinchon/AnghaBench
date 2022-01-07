
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_refspec ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_git_fail (int ) ;
 int git_buf_dispose (int *) ;
 int git_refspec__dispose (int *) ;
 int git_refspec__parse (int *,char const*,int) ;
 int git_refspec_transform (int *,int *,char const*) ;

__attribute__((used)) static void assert_invalid_transform(const char *refspec, const char *name)
{
 git_refspec spec;
 git_buf buf = GIT_BUF_INIT;

 git_refspec__parse(&spec, refspec, 1);
 cl_git_fail(git_refspec_transform(&buf, &spec, name));

 git_buf_dispose(&buf);
 git_refspec__dispose(&spec);
}
