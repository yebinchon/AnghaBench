
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_step {int member_0; struct opal_key* member_1; } ;
struct opal_key {int dummy; } ;
struct opal_dev {int dev_lock; } ;


 int ARRAY_SIZE (struct opal_step const*) ;
 int clean_opal_dev (struct opal_dev*) ;
 int execute_steps (struct opal_dev*,struct opal_step const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int revert_tper ;
 int setup_opal_dev (struct opal_dev*) ;
 int start_PSID_opal_session ;
 int start_SIDASP_opal_session ;

__attribute__((used)) static int opal_reverttper(struct opal_dev *dev, struct opal_key *opal, bool psid)
{

 const struct opal_step revert_steps[] = {
  { start_SIDASP_opal_session, opal },
  { revert_tper, }
 };
 const struct opal_step psid_revert_steps[] = {
  { start_PSID_opal_session, opal },
  { revert_tper, }
 };

 int ret;

 mutex_lock(&dev->dev_lock);
 setup_opal_dev(dev);
 if (psid)
  ret = execute_steps(dev, psid_revert_steps,
        ARRAY_SIZE(psid_revert_steps));
 else
  ret = execute_steps(dev, revert_steps,
        ARRAY_SIZE(revert_steps));
 mutex_unlock(&dev->dev_lock);





 if (!ret)
  clean_opal_dev(dev);

 return ret;
}
