
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* message_pass ) (int,int) ;} ;


 int smp_muxed_ipi_message_pass (int,int) ;
 TYPE_1__* smp_ops ;
 int stub1 (int,int) ;

__attribute__((used)) static inline void do_message_pass(int cpu, int msg)
{
 if (smp_ops->message_pass)
  smp_ops->message_pass(cpu, msg);




}
