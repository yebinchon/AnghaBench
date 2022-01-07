
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi_desc {int control; } ;


 int POSTED_INTR_ON ;
 int test_and_clear_bit (int ,unsigned long*) ;

__attribute__((used)) static inline bool pi_test_and_clear_on(struct pi_desc *pi_desc)
{
 return test_and_clear_bit(POSTED_INTR_ON,
   (unsigned long *)&pi_desc->control);
}
