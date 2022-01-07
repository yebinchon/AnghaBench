
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_refspec ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_refspec__dispose (int *) ;
 int git_refspec__parse (int *,char const*,int) ;
 int git_refspec_transform (TYPE_1__*,int *,char const*) ;

__attribute__((used)) static void assert_valid_transform(const char *refspec, const char *name, const char *result)
{
 git_refspec spec;
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_refspec__parse(&spec, refspec, 1));
 cl_git_pass(git_refspec_transform(&buf, &spec, name));
 cl_assert_equal_s(result, buf.ptr);

 git_buf_dispose(&buf);
 git_refspec__dispose(&spec);
}
