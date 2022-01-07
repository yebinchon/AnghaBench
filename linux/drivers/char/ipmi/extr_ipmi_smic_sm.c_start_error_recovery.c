
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {scalar_t__ error_retries; int smic_timeout; int state; scalar_t__ read_pos; scalar_t__ write_pos; int orig_write_count; int write_count; } ;


 int SMIC_DEBUG_ENABLE ;
 int SMIC_HOSED ;
 scalar_t__ SMIC_MAX_ERROR_RETRIES ;
 int SMIC_RETRY_TIMEOUT ;
 int SMIC_START_OP ;
 int pr_warn (char*,char*) ;
 int smic_debug ;

__attribute__((used)) static inline void start_error_recovery(struct si_sm_data *smic, char *reason)
{
 (smic->error_retries)++;
 if (smic->error_retries > SMIC_MAX_ERROR_RETRIES) {
  if (smic_debug & SMIC_DEBUG_ENABLE)
   pr_warn("ipmi_smic_drv: smic hosed: %s\n", reason);
  smic->state = SMIC_HOSED;
 } else {
  smic->write_count = smic->orig_write_count;
  smic->write_pos = 0;
  smic->read_pos = 0;
  smic->state = SMIC_START_OP;
  smic->smic_timeout = SMIC_RETRY_TIMEOUT;
 }
}
