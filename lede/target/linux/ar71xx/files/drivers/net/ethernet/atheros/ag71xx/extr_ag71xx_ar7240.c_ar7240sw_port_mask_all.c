
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int ports; } ;
struct ar7240sw {TYPE_1__ swdev; } ;


 scalar_t__ BIT (int ) ;

__attribute__((used)) static inline u32 ar7240sw_port_mask_all(struct ar7240sw *as)
{
 return BIT(as->swdev.ports) - 1;
}
