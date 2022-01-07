
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_bitvec ;


 int check_some_bits (int *,int) ;
 int cl_git_pass (int ) ;
 int git_bitvec_clear (int *) ;
 int git_bitvec_free (int *) ;
 int git_bitvec_init (int *,int) ;
 int set_some_bits (int *,int) ;

void test_core_bitvec__0(void)
{
 git_bitvec bv;

 cl_git_pass(git_bitvec_init(&bv, 32));
 set_some_bits(&bv, 16);
 check_some_bits(&bv, 16);
 git_bitvec_clear(&bv);
 set_some_bits(&bv, 32);
 check_some_bits(&bv, 32);
 git_bitvec_clear(&bv);
 set_some_bits(&bv, 64);
 check_some_bits(&bv, 64);
 git_bitvec_free(&bv);

 cl_git_pass(git_bitvec_init(&bv, 128));
 set_some_bits(&bv, 32);
 check_some_bits(&bv, 32);
 set_some_bits(&bv, 128);
 check_some_bits(&bv, 128);
 git_bitvec_free(&bv);

 cl_git_pass(git_bitvec_init(&bv, 4000));
 set_some_bits(&bv, 4000);
 check_some_bits(&bv, 4000);
 git_bitvec_free(&bv);
}
