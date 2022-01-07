
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcs_bmc {int data_in_avail; scalar_t__ data_in_idx; int phase; } ;


 int ERROR_STATE ;
 int KCS_PHASE_ERROR ;
 int KCS_ZERO_DATA ;
 int read_data (struct kcs_bmc*) ;
 int set_state (struct kcs_bmc*,int ) ;
 int write_data (struct kcs_bmc*,int ) ;

__attribute__((used)) static void kcs_force_abort(struct kcs_bmc *kcs_bmc)
{
 set_state(kcs_bmc, ERROR_STATE);
 read_data(kcs_bmc);
 write_data(kcs_bmc, KCS_ZERO_DATA);

 kcs_bmc->phase = KCS_PHASE_ERROR;
 kcs_bmc->data_in_avail = 0;
 kcs_bmc->data_in_idx = 0;
}
