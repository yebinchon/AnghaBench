
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid ;
typedef int u8 ;
struct opal_dev {int dummy; } ;


 int OPAL_ACTIVEKEY ;
 int OPAL_UID_LENGTH ;
 int build_locking_range (int *,int,int ) ;
 int generic_get_column (struct opal_dev*,int *,int ) ;
 int get_active_key_cont (struct opal_dev*) ;

__attribute__((used)) static int get_active_key(struct opal_dev *dev, void *data)
{
 u8 uid[OPAL_UID_LENGTH];
 int err;
 u8 *lr = data;

 err = build_locking_range(uid, sizeof(uid), *lr);
 if (err)
  return err;

 err = generic_get_column(dev, uid, OPAL_ACTIVEKEY);
 if (err)
  return err;

 return get_active_key_cont(dev);
}
