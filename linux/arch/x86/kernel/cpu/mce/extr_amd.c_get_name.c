
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct threshold_block {size_t block; } ;
typedef enum smca_bank_types { ____Placeholder_smca_bank_types } smca_bank_types ;
struct TYPE_6__ {int smca; } ;
struct TYPE_5__ {int sysfs_id; TYPE_1__* hwid; } ;
struct TYPE_4__ {int count; } ;


 size_t ARRAY_SIZE (char const**) ;
 int MAX_MCATYPE_NAME_LEN ;
 int N_SMCA_BANK_TYPES ;
 int SMCA_UMC ;
 char const* bank4_names (struct threshold_block*) ;
 char const* buf_mcatype ;
 TYPE_3__ mce_flags ;
 TYPE_2__* smca_banks ;
 int smca_get_bank_type (unsigned int) ;
 char* smca_get_name (int) ;
 char const** smca_umc_block_names ;
 int snprintf (char const*,int ,char*,char*,int) ;
 char const** th_names ;

__attribute__((used)) static const char *get_name(unsigned int bank, struct threshold_block *b)
{
 enum smca_bank_types bank_type;

 if (!mce_flags.smca) {
  if (b && bank == 4)
   return bank4_names(b);

  return th_names[bank];
 }

 bank_type = smca_get_bank_type(bank);
 if (bank_type >= N_SMCA_BANK_TYPES)
  return ((void*)0);

 if (b && bank_type == SMCA_UMC) {
  if (b->block < ARRAY_SIZE(smca_umc_block_names))
   return smca_umc_block_names[b->block];
  return ((void*)0);
 }

 if (smca_banks[bank].hwid->count == 1)
  return smca_get_name(bank_type);

 snprintf(buf_mcatype, MAX_MCATYPE_NAME_LEN,
   "%s_%x", smca_get_name(bank_type),
     smca_banks[bank].sysfs_id);
 return buf_mcatype;
}
