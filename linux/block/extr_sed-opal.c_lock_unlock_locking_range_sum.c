
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int lr; } ;
struct TYPE_4__ {TYPE_1__ opal_key; } ;
struct opal_lock_unlock {int l_state; TYPE_2__ session; } ;
struct opal_dev {int comid; } ;
typedef int lr_buffer ;


 int ERANGE ;
 int OPAL_INVAL_PARAM ;



 int OPAL_UID_LENGTH ;
 scalar_t__ build_locking_range (int*,int,int ) ;
 int clear_opal_cmd (struct opal_dev*) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int generic_lr_enable_disable (struct opal_dev*,int*,int,int,int,int) ;
 int parse_and_check_status ;
 int pr_debug (char*) ;
 int set_comid (struct opal_dev*,int ) ;

__attribute__((used)) static int lock_unlock_locking_range_sum(struct opal_dev *dev, void *data)
{
 u8 lr_buffer[OPAL_UID_LENGTH];
 u8 read_locked = 1, write_locked = 1;
 struct opal_lock_unlock *lkul = data;
 int ret;

 clear_opal_cmd(dev);
 set_comid(dev, dev->comid);

 if (build_locking_range(lr_buffer, sizeof(lr_buffer),
    lkul->session.opal_key.lr) < 0)
  return -ERANGE;

 switch (lkul->l_state) {
 case 129:
  read_locked = 0;
  write_locked = 1;
  break;
 case 128:
  read_locked = 0;
  write_locked = 0;
  break;
 case 130:

  break;
 default:
  pr_debug("Tried to set an invalid locking state.\n");
  return OPAL_INVAL_PARAM;
 }
 ret = generic_lr_enable_disable(dev, lr_buffer, 1, 1,
     read_locked, write_locked);

 if (ret < 0) {
  pr_debug("Error building SET command.\n");
  return ret;
 }

 return finalize_and_send(dev, parse_and_check_status);
}
