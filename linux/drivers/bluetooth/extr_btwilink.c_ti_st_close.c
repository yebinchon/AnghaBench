
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ti_st {int * st_write; } ;
struct hci_dev {int dummy; } ;
struct TYPE_3__ {int chnl_id; } ;


 int BT_ERR (char*,int ,int) ;
 int MAX_BT_CHNL_IDS ;
 struct ti_st* hci_get_drvdata (struct hci_dev*) ;
 int st_unregister (TYPE_1__*) ;
 TYPE_1__* ti_st_proto ;

__attribute__((used)) static int ti_st_close(struct hci_dev *hdev)
{
 int err, i;
 struct ti_st *hst = hci_get_drvdata(hdev);

 for (i = MAX_BT_CHNL_IDS-1; i >= 0; i--) {
  err = st_unregister(&ti_st_proto[i]);
  if (err)
   BT_ERR("st_unregister(%d) failed with error %d",
     ti_st_proto[i].chnl_id, err);
 }

 hst->st_write = ((void*)0);

 return err;
}
