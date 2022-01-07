
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid ;
typedef int u8 ;
struct TYPE_2__ {int lr; } ;
struct opal_session_info {TYPE_1__ opal_key; } ;
struct opal_dev {int dummy; } ;


 int ERANGE ;
 size_t OPAL_ERASE ;
 int OPAL_UID_LENGTH ;
 scalar_t__ build_locking_range (int *,int,int ) ;
 int cmd_start (struct opal_dev*,int *,int ) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int * opalmethod ;
 int parse_and_check_status ;
 int pr_debug (char*) ;

__attribute__((used)) static int erase_locking_range(struct opal_dev *dev, void *data)
{
 struct opal_session_info *session = data;
 u8 uid[OPAL_UID_LENGTH];
 int err;

 if (build_locking_range(uid, sizeof(uid), session->opal_key.lr) < 0)
  return -ERANGE;

 err = cmd_start(dev, uid, opalmethod[OPAL_ERASE]);

 if (err) {
  pr_debug("Error building Erase Locking Range Command.\n");
  return err;
 }

 return finalize_and_send(dev, parse_and_check_status);
}
