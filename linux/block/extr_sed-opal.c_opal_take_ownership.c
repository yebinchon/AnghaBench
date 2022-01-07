
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_step {int member_0; struct opal_key* member_1; } ;
struct opal_key {int dummy; } ;
struct opal_dev {int dev_lock; } ;


 int ARRAY_SIZE (struct opal_step const*) ;
 int ENODEV ;
 int end_opal_session ;
 int execute_steps (struct opal_dev*,struct opal_step const*,int ) ;
 int get_msid_cpin_pin ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_sid_cpin_pin ;
 int setup_opal_dev (struct opal_dev*) ;
 int start_SIDASP_opal_session ;
 int start_anybodyASP_opal_session ;

__attribute__((used)) static int opal_take_ownership(struct opal_dev *dev, struct opal_key *opal)
{
 const struct opal_step owner_steps[] = {
  { start_anybodyASP_opal_session, },
  { get_msid_cpin_pin, },
  { end_opal_session, },
  { start_SIDASP_opal_session, opal },
  { set_sid_cpin_pin, opal },
  { end_opal_session, }
 };
 int ret;

 if (!dev)
  return -ENODEV;

 mutex_lock(&dev->dev_lock);
 setup_opal_dev(dev);
 ret = execute_steps(dev, owner_steps, ARRAY_SIZE(owner_steps));
 mutex_unlock(&dev->dev_lock);

 return ret;
}
