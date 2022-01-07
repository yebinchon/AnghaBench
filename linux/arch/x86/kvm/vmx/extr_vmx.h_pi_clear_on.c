
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi_desc {int control; } ;


 int POSTED_INTR_ON ;
 int clear_bit (int ,unsigned long*) ;

__attribute__((used)) static inline void pi_clear_on(struct pi_desc *pi_desc)
{
 clear_bit(POSTED_INTR_ON,
  (unsigned long *)&pi_desc->control);
}
