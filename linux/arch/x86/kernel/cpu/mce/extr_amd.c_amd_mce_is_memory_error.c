
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mce {int status; int bank; } ;
struct TYPE_2__ {scalar_t__ smca; } ;


 scalar_t__ SMCA_UMC ;
 TYPE_1__ mce_flags ;
 scalar_t__ smca_get_bank_type (int) ;

bool amd_mce_is_memory_error(struct mce *m)
{

 u8 xec = (m->status >> 16) & 0x1f;

 if (mce_flags.smca)
  return smca_get_bank_type(m->bank) == SMCA_UMC && xec == 0x0;

 return m->bank == 4 && xec == 0x8;
}
