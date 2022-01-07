
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct powernow_k8_data {int currfid; int currvid; } ;


 int INVALID_FID_MASK ;
 int INVALID_VID_MASK ;
 int MSR_C_LO_INIT_FID_VID ;
 int MSR_C_LO_VID_SHIFT ;
 int MSR_FIDVID_CTL ;
 int STOP_GRANT_5NS ;
 int pr_debug (char*,int,int,int ) ;
 int pr_err (char*,...) ;
 scalar_t__ query_current_values_with_pending_wait (struct powernow_k8_data*) ;
 int wrmsr (int ,int,int ) ;

__attribute__((used)) static int write_new_vid(struct powernow_k8_data *data, u32 vid)
{
 u32 lo;
 u32 savefid = data->currfid;
 int i = 0;

 if ((data->currfid & INVALID_FID_MASK) || (vid & INVALID_VID_MASK)) {
  pr_err("internal error - overflow on vid write\n");
  return 1;
 }

 lo = data->currfid;
 lo |= (vid << MSR_C_LO_VID_SHIFT);
 lo |= MSR_C_LO_INIT_FID_VID;

 pr_debug("writing vid 0x%x, lo 0x%x, hi 0x%x\n",
  vid, lo, STOP_GRANT_5NS);

 do {
  wrmsr(MSR_FIDVID_CTL, lo, STOP_GRANT_5NS);
  if (i++ > 100) {
   pr_err("internal error - pending bit very stuck - no further pstate changes possible\n");
   return 1;
  }
 } while (query_current_values_with_pending_wait(data));

 if (savefid != data->currfid) {
  pr_err("fid changed on vid trans, old 0x%x new 0x%x\n",
   savefid, data->currfid);
  return 1;
 }

 if (vid != data->currvid) {
  pr_err("vid trans failed, vid 0x%x, curr 0x%x\n",
    vid, data->currvid);
  return 1;
 }

 return 0;
}
