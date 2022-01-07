
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {unsigned int frequency; } ;
struct TYPE_3__ {int nr_pstates; int nominal; } ;


 int idx_to_pstate (int) ;
 TYPE_2__* powernv_freqs ;
 TYPE_1__ powernv_pstate_info ;
 int pr_warn (char*,int ,int ) ;
 int pstate_to_idx (int ) ;

__attribute__((used)) static unsigned int pstate_id_to_freq(u8 pstate_id)
{
 int i;

 i = pstate_to_idx(pstate_id);
 if (i >= powernv_pstate_info.nr_pstates || i < 0) {
  pr_warn("PState id 0x%x outside of PState table, reporting nominal id 0x%x instead\n",
   pstate_id, idx_to_pstate(powernv_pstate_info.nominal));
  i = powernv_pstate_info.nominal;
 }

 return powernv_freqs[i].frequency;
}
