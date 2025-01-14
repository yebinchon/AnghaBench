
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct ds_var_resp {int result; TYPE_1__ hdr; } ;
struct ds_info {int dummy; } ;
struct ds_data {int dummy; } ;
struct ds_cap_state {int dummy; } ;


 scalar_t__ DS_VAR_DELETE_RESP ;
 scalar_t__ DS_VAR_SET_RESP ;
 int ds_var_doorbell ;
 int ds_var_response ;
 int wmb () ;

__attribute__((used)) static void ds_var_data(struct ds_info *dp,
   struct ds_cap_state *cp,
   void *buf, int len)
{
 struct ds_data *dpkt = buf;
 struct ds_var_resp *rp;

 rp = (struct ds_var_resp *) (dpkt + 1);

 if (rp->hdr.type != DS_VAR_SET_RESP &&
     rp->hdr.type != DS_VAR_DELETE_RESP)
  return;

 ds_var_response = rp->result;
 wmb();
 ds_var_doorbell = 1;
}
