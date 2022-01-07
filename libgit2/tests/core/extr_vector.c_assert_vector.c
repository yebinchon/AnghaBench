
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** contents; int length; } ;
typedef TYPE_1__ git_vector ;


 int cl_assert (int) ;
 int cl_assert_equal_i (size_t,int ) ;

__attribute__((used)) static void assert_vector(git_vector *x, void *expected[], size_t len)
{
 size_t i;

 cl_assert_equal_i(len, x->length);

 for (i = 0; i < len; i++)
  cl_assert(expected[i] == x->contents[i]);
}
