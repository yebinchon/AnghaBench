
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_step {int member_0; struct opal_session_info* member_1; } ;
struct opal_session_info {int dummy; } ;
struct opal_dev {int dev_lock; } ;


 int ARRAY_SIZE (struct opal_step const*) ;
 int end_opal_session ;
 int erase_locking_range ;
 int execute_steps (struct opal_dev*,struct opal_step const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setup_opal_dev (struct opal_dev*) ;
 int start_auth_opal_session ;

__attribute__((used)) static int opal_erase_locking_range(struct opal_dev *dev,
        struct opal_session_info *opal_session)
{
 const struct opal_step erase_steps[] = {
  { start_auth_opal_session, opal_session },
  { erase_locking_range, opal_session },
  { end_opal_session, }
 };
 int ret;

 mutex_lock(&dev->dev_lock);
 setup_opal_dev(dev);
 ret = execute_steps(dev, erase_steps, ARRAY_SIZE(erase_steps));
 mutex_unlock(&dev->dev_lock);

 return ret;
}
