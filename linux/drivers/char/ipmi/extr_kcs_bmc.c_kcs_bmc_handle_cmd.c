
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kcs_bmc {int data_in_avail; int error; int data_in_idx; int phase; } ;


 int KCS_ABORTED_BY_COMMAND ;



 int KCS_ILLEGAL_CONTROL_CODE ;
 int KCS_NO_ERROR ;
 int KCS_PHASE_ABORT_ERROR1 ;
 int KCS_PHASE_WRITE_DATA ;
 int KCS_PHASE_WRITE_END_CMD ;
 int KCS_PHASE_WRITE_START ;
 int KCS_ZERO_DATA ;
 int WRITE_STATE ;
 int kcs_force_abort (struct kcs_bmc*) ;
 int read_data (struct kcs_bmc*) ;
 int set_state (struct kcs_bmc*,int ) ;
 int write_data (struct kcs_bmc*,int ) ;

__attribute__((used)) static void kcs_bmc_handle_cmd(struct kcs_bmc *kcs_bmc)
{
 u8 cmd;

 set_state(kcs_bmc, WRITE_STATE);
 write_data(kcs_bmc, KCS_ZERO_DATA);

 cmd = read_data(kcs_bmc);
 switch (cmd) {
 case 128:
  kcs_bmc->phase = KCS_PHASE_WRITE_START;
  kcs_bmc->error = KCS_NO_ERROR;
  kcs_bmc->data_in_avail = 0;
  kcs_bmc->data_in_idx = 0;
  break;

 case 129:
  if (kcs_bmc->phase != KCS_PHASE_WRITE_DATA) {
   kcs_force_abort(kcs_bmc);
   break;
  }

  kcs_bmc->phase = KCS_PHASE_WRITE_END_CMD;
  break;

 case 130:
  if (kcs_bmc->error == KCS_NO_ERROR)
   kcs_bmc->error = KCS_ABORTED_BY_COMMAND;

  kcs_bmc->phase = KCS_PHASE_ABORT_ERROR1;
  kcs_bmc->data_in_avail = 0;
  kcs_bmc->data_in_idx = 0;
  break;

 default:
  kcs_force_abort(kcs_bmc);
  kcs_bmc->error = KCS_ILLEGAL_CONTROL_CODE;
  break;
 }
}
