
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int driver_data; } ;
struct TYPE_3__ {unsigned int nr_pstates; size_t nominal; } ;


 TYPE_2__* powernv_freqs ;
 TYPE_1__ powernv_pstate_info ;
 int pr_warn_once (char*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u8 idx_to_pstate(unsigned int i)
{
 if (unlikely(i >= powernv_pstate_info.nr_pstates)) {
  pr_warn_once("idx_to_pstate: index %u is out of bound\n", i);
  return powernv_freqs[powernv_pstate_info.nominal].driver_data;
 }

 return powernv_freqs[i].driver_data;
}
