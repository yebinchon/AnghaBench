
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct powernow_k8_data {scalar_t__ currfid; scalar_t__ currvid; } ;


 int pr_debug (char*,scalar_t__,...) ;
 int pr_err (char*,scalar_t__,scalar_t__) ;
 scalar_t__ query_current_values_with_pending_wait (struct powernow_k8_data*) ;
 int smp_processor_id () ;
 scalar_t__ write_new_vid (struct powernow_k8_data*,scalar_t__) ;

__attribute__((used)) static int core_voltage_post_transition(struct powernow_k8_data *data,
  u32 reqvid)
{
 u32 savefid = data->currfid;
 u32 savereqvid = reqvid;

 pr_debug("ph3 (cpu%d): starting, currfid 0x%x, currvid 0x%x\n",
  smp_processor_id(),
  data->currfid, data->currvid);

 if (reqvid != data->currvid) {
  if (write_new_vid(data, reqvid))
   return 1;

  if (savefid != data->currfid) {
   pr_err("ph3: bad fid change, save 0x%x, curr 0x%x\n",
    savefid, data->currfid);
   return 1;
  }

  if (data->currvid != reqvid) {
   pr_err("ph3: failed vid transition\n, req 0x%x, curr 0x%x",
    reqvid, data->currvid);
   return 1;
  }
 }

 if (query_current_values_with_pending_wait(data))
  return 1;

 if (savereqvid != data->currvid) {
  pr_debug("ph3 failed, currvid 0x%x\n", data->currvid);
  return 1;
 }

 if (savefid != data->currfid) {
  pr_debug("ph3 failed, currfid changed 0x%x\n",
   data->currfid);
  return 1;
 }

 pr_debug("ph3 complete, currfid 0x%x, currvid 0x%x\n",
  data->currfid, data->currvid);

 return 0;
}
