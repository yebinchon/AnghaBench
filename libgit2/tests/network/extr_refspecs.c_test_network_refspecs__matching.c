
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dst; int src; int string; } ;
typedef TYPE_1__ git_refspec ;


 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_refspec__dispose (TYPE_1__*) ;
 int git_refspec__parse (TYPE_1__*,char*,int) ;

void test_network_refspecs__matching(void)
{
 git_refspec spec;

 cl_git_pass(git_refspec__parse(&spec, ":", 0));
 cl_assert_equal_s(":", spec.string);
 cl_assert_equal_s("", spec.src);
 cl_assert_equal_s("", spec.dst);

 git_refspec__dispose(&spec);
}
