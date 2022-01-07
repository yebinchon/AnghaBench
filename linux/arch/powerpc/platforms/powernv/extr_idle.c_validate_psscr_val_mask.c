
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int ERR_DEEP_STATE_ESL_MISMATCH ;
 int ERR_EC_ESL_MISMATCH ;
 scalar_t__ GET_PSSCR_EC (int) ;
 scalar_t__ GET_PSSCR_ESL (int) ;
 int OPAL_PM_LOSE_FULL_CONTEXT ;
 int PSSCR_HV_DEFAULT_MASK ;
 int PSSCR_HV_DEFAULT_VAL ;

int validate_psscr_val_mask(u64 *psscr_val, u64 *psscr_mask, u32 flags)
{
 int err = 0;






 if (*psscr_mask == 0xf) {
  *psscr_val = *psscr_val | PSSCR_HV_DEFAULT_VAL;
  *psscr_mask = PSSCR_HV_DEFAULT_MASK;
  return err;
 }
 if (GET_PSSCR_ESL(*psscr_val) != GET_PSSCR_EC(*psscr_val)) {
  err = ERR_EC_ESL_MISMATCH;
 } else if ((flags & OPAL_PM_LOSE_FULL_CONTEXT) &&
  GET_PSSCR_ESL(*psscr_val) == 0) {
  err = ERR_DEEP_STATE_ESL_MISMATCH;
 }

 return err;
}
