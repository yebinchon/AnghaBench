
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_refspec ;


 unsigned int GIT_DIRECTION_FETCH ;
 int GIT_ERROR ;
 int cl_assert_equal_i (int ,int) ;
 int git_refspec__dispose (int *) ;
 int git_refspec__parse (int *,char const*,int) ;

__attribute__((used)) static void assert_refspec(unsigned int direction, const char *input, bool is_expected_to_be_valid)
{
 git_refspec refspec;
 int error;

 error = git_refspec__parse(&refspec, input, direction == GIT_DIRECTION_FETCH);
 git_refspec__dispose(&refspec);

 if (is_expected_to_be_valid)
  cl_assert_equal_i(0, error);
 else
  cl_assert_equal_i(GIT_ERROR, error);
}
