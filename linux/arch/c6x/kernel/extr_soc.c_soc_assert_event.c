
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* assert_event ) (unsigned int) ;} ;


 TYPE_1__ soc_ops ;
 int stub1 (unsigned int) ;

void soc_assert_event(unsigned int evt)
{
 if (soc_ops.assert_event)
  soc_ops.assert_event(evt);
}
