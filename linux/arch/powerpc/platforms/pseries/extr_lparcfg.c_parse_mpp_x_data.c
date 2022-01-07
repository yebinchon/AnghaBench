
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct hvcall_mpp_x_data {scalar_t__ pool_spurr_cycles; scalar_t__ pool_purr_cycles; scalar_t__ pool_coalesced_bytes; scalar_t__ coalesced_bytes; } ;


 int FW_FEATURE_XCMO ;
 int firmware_has_feature (int ) ;
 scalar_t__ h_get_mpp_x (struct hvcall_mpp_x_data*) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;

__attribute__((used)) static void parse_mpp_x_data(struct seq_file *m)
{
 struct hvcall_mpp_x_data mpp_x_data;

 if (!firmware_has_feature(FW_FEATURE_XCMO))
  return;
 if (h_get_mpp_x(&mpp_x_data))
  return;

 seq_printf(m, "coalesced_bytes=%ld\n", mpp_x_data.coalesced_bytes);

 if (mpp_x_data.pool_coalesced_bytes)
  seq_printf(m, "pool_coalesced_bytes=%ld\n",
      mpp_x_data.pool_coalesced_bytes);
 if (mpp_x_data.pool_purr_cycles)
  seq_printf(m, "coalesce_pool_purr=%ld\n", mpp_x_data.pool_purr_cycles);
 if (mpp_x_data.pool_spurr_cycles)
  seq_printf(m, "coalesce_pool_spurr=%ld\n", mpp_x_data.pool_spurr_cycles);
}
