
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi_desc {int control; } ;


 int POSTED_INTR_SN ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline int pi_test_sn(struct pi_desc *pi_desc)
{
 return test_bit(POSTED_INTR_SN,
   (unsigned long *)&pi_desc->control);
}
