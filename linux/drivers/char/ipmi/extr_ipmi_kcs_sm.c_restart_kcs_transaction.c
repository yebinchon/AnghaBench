
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {int obf_timeout; int ibf_timeout; int state; scalar_t__ read_pos; scalar_t__ write_pos; int orig_write_count; int write_count; } ;


 int IBF_RETRY_TIMEOUT ;
 int KCS_WAIT_WRITE_START ;
 int KCS_WRITE_START ;
 int OBF_RETRY_TIMEOUT ;
 int write_cmd (struct si_sm_data*,int ) ;

__attribute__((used)) static void restart_kcs_transaction(struct si_sm_data *kcs)
{
 kcs->write_count = kcs->orig_write_count;
 kcs->write_pos = 0;
 kcs->read_pos = 0;
 kcs->state = KCS_WAIT_WRITE_START;
 kcs->ibf_timeout = IBF_RETRY_TIMEOUT;
 kcs->obf_timeout = OBF_RETRY_TIMEOUT;
 write_cmd(kcs, KCS_WRITE_START);
}
