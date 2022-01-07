
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int (* handler ) (int ) ;} ;


 TYPE_1__* dmabrg_handlers ;
 int stub1 (int ) ;

__attribute__((used)) static inline void dmabrg_call_handler(int i)
{
 dmabrg_handlers[i].handler(dmabrg_handlers[i].data);
}
