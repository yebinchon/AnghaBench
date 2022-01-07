
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nominal; } ;


 TYPE_1__ powernv_pstate_info ;

__attribute__((used)) static inline unsigned int get_nominal_index(void)
{
 return powernv_pstate_info.nominal;
}
