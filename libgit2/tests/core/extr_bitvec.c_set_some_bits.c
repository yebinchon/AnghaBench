
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_bitvec ;


 int git_bitvec_set (int *,size_t,int) ;

__attribute__((used)) static void set_some_bits(git_bitvec *bv, size_t length)
{
 size_t i;

 for (i = 0; i < length; ++i) {
  if (i % 3 == 0 || i % 7 == 0)
   git_bitvec_set(bv, i, 1);
 }
}
