
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_bitvec ;


 int cl_assert_equal_b (int,int ) ;
 int git_bitvec_get (int *,size_t) ;

__attribute__((used)) static void check_some_bits(git_bitvec *bv, size_t length)
{
 size_t i;

 for (i = 0; i < length; ++i)
  cl_assert_equal_b(i % 3 == 0 || i % 7 == 0, git_bitvec_get(bv, i));
}
