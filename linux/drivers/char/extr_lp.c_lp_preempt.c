
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp_struct {int bits; } ;


 int LP_PREEMPT_REQUEST ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int lp_preempt(void *handle)
{
 struct lp_struct *this_lp = (struct lp_struct *)handle;
 set_bit(LP_PREEMPT_REQUEST, &this_lp->bits);
 return 1;
}
