
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kcs_bmc {int dummy; } ;


 int KCS_STATUS_STATE (int ) ;
 int KCS_STATUS_STATE_MASK ;
 int update_status_bits (struct kcs_bmc*,int ,int ) ;

__attribute__((used)) static inline void set_state(struct kcs_bmc *kcs_bmc, u8 state)
{
 update_status_bits(kcs_bmc, KCS_STATUS_STATE_MASK,
     KCS_STATUS_STATE(state));
}
