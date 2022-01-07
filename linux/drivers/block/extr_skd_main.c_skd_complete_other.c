
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int id; int state; } ;
struct skd_special_context {TYPE_2__ req; } ;
struct skd_device {struct skd_special_context internal_skspcl; TYPE_1__* pdev; int lock; } ;
struct fit_completion_entry_v1 {int tag; } ;
struct fit_comp_error_info {int dummy; } ;
struct TYPE_3__ {int dev; } ;





 int SKD_ID_SLOT_MASK ;
 int SKD_ID_TABLE_MASK ;
 int SKD_REQ_STATE_BUSY ;
 int dev_dbg (int *,char*,int,int,int) ;
 int lockdep_assert_held (int *) ;
 int skd_complete_internal (struct skd_device*,struct fit_completion_entry_v1*,struct fit_comp_error_info*,struct skd_special_context*) ;

__attribute__((used)) static void skd_complete_other(struct skd_device *skdev,
          struct fit_completion_entry_v1 *skcomp,
          struct fit_comp_error_info *skerr)
{
 u32 req_id = 0;
 u32 req_table;
 u32 req_slot;
 struct skd_special_context *skspcl;

 lockdep_assert_held(&skdev->lock);

 req_id = skcomp->tag;
 req_table = req_id & SKD_ID_TABLE_MASK;
 req_slot = req_id & SKD_ID_SLOT_MASK;

 dev_dbg(&skdev->pdev->dev, "table=0x%x id=0x%x slot=%d\n", req_table,
  req_id, req_slot);






 switch (req_table) {
 case 128:





  break;

 case 129:
  if (req_slot == 0) {
   skspcl = &skdev->internal_skspcl;
   if (skspcl->req.id == req_id &&
       skspcl->req.state == SKD_REQ_STATE_BUSY) {
    skd_complete_internal(skdev,
            skcomp, skerr, skspcl);
    return;
   }
  }
  break;

 case 130:



  break;

 default:



  break;
 }




}
