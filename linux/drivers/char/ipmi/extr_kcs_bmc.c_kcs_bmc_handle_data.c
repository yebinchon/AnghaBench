
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct kcs_bmc {int phase; int data_in_avail; void* error; int data_out_idx; void** data_out; int data_out_len; int queue; int data_in_idx; void** data_in; } ;


 int ERROR_STATE ;
 int IDLE_STATE ;
 void* KCS_CMD_READ_BYTE ;
 void* KCS_LENGTH_ERROR ;
 int KCS_MSG_BUFSIZ ;


 void* KCS_PHASE_IDLE ;


 int KCS_PHASE_WRITE_DONE ;


 void* KCS_ZERO_DATA ;
 int READ_STATE ;
 int WRITE_STATE ;
 int kcs_force_abort (struct kcs_bmc*) ;
 void* read_data (struct kcs_bmc*) ;
 int set_state (struct kcs_bmc*,int ) ;
 int wake_up_interruptible (int *) ;
 int write_data (struct kcs_bmc*,void*) ;

__attribute__((used)) static void kcs_bmc_handle_data(struct kcs_bmc *kcs_bmc)
{
 u8 data;

 switch (kcs_bmc->phase) {
 case 128:
  kcs_bmc->phase = 130;


 case 130:
  if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
   set_state(kcs_bmc, WRITE_STATE);
   write_data(kcs_bmc, KCS_ZERO_DATA);
   kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
      read_data(kcs_bmc);
  } else {
   kcs_force_abort(kcs_bmc);
   kcs_bmc->error = KCS_LENGTH_ERROR;
  }
  break;

 case 129:
  if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
   set_state(kcs_bmc, READ_STATE);
   kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
      read_data(kcs_bmc);
   kcs_bmc->phase = KCS_PHASE_WRITE_DONE;
   kcs_bmc->data_in_avail = 1;
   wake_up_interruptible(&kcs_bmc->queue);
  } else {
   kcs_force_abort(kcs_bmc);
   kcs_bmc->error = KCS_LENGTH_ERROR;
  }
  break;

 case 131:
  if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len)
   set_state(kcs_bmc, IDLE_STATE);

  data = read_data(kcs_bmc);
  if (data != KCS_CMD_READ_BYTE) {
   set_state(kcs_bmc, ERROR_STATE);
   write_data(kcs_bmc, KCS_ZERO_DATA);
   break;
  }

  if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len) {
   write_data(kcs_bmc, KCS_ZERO_DATA);
   kcs_bmc->phase = KCS_PHASE_IDLE;
   break;
  }

  write_data(kcs_bmc,
   kcs_bmc->data_out[kcs_bmc->data_out_idx++]);
  break;

 case 133:
  set_state(kcs_bmc, READ_STATE);
  read_data(kcs_bmc);
  write_data(kcs_bmc, kcs_bmc->error);
  kcs_bmc->phase = 132;
  break;

 case 132:
  set_state(kcs_bmc, IDLE_STATE);
  read_data(kcs_bmc);
  write_data(kcs_bmc, KCS_ZERO_DATA);
  kcs_bmc->phase = KCS_PHASE_IDLE;
  break;

 default:
  kcs_force_abort(kcs_bmc);
  break;
 }
}
