
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* status ) (int) ;} ;


 int mce_num_banks ;
 int mce_wrmsrl (int ,int ) ;
 TYPE_1__ msr_ops ;
 int stub1 (int) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 int this_cpu_read (int ) ;

__attribute__((used)) static void mce_clear_state(unsigned long *toclear)
{
 int i;

 for (i = 0; i < this_cpu_read(mce_num_banks); i++) {
  if (test_bit(i, toclear))
   mce_wrmsrl(msr_ops.status(i), 0);
 }
}
