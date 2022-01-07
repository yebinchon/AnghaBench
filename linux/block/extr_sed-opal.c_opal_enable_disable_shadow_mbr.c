
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_step {int member_0; int * member_1; } ;
struct opal_mbr_data {scalar_t__ enable_disable; int key; } ;
struct opal_dev {int dev_lock; } ;


 int ARRAY_SIZE (struct opal_step const*) ;
 int EINVAL ;
 int OPAL_FALSE ;
 scalar_t__ OPAL_MBR_DISABLE ;
 scalar_t__ OPAL_MBR_ENABLE ;
 int OPAL_TRUE ;
 int end_opal_session ;
 int execute_steps (struct opal_dev*,struct opal_step const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_mbr_done ;
 int set_mbr_enable_disable ;
 int setup_opal_dev (struct opal_dev*) ;
 int start_admin1LSP_opal_session ;

__attribute__((used)) static int opal_enable_disable_shadow_mbr(struct opal_dev *dev,
       struct opal_mbr_data *opal_mbr)
{
 u8 enable_disable = opal_mbr->enable_disable == OPAL_MBR_ENABLE ?
  OPAL_TRUE : OPAL_FALSE;

 const struct opal_step mbr_steps[] = {
  { start_admin1LSP_opal_session, &opal_mbr->key },
  { set_mbr_done, &enable_disable },
  { end_opal_session, },
  { start_admin1LSP_opal_session, &opal_mbr->key },
  { set_mbr_enable_disable, &enable_disable },
  { end_opal_session, }
 };
 int ret;

 if (opal_mbr->enable_disable != OPAL_MBR_ENABLE &&
     opal_mbr->enable_disable != OPAL_MBR_DISABLE)
  return -EINVAL;

 mutex_lock(&dev->dev_lock);
 setup_opal_dev(dev);
 ret = execute_steps(dev, mbr_steps, ARRAY_SIZE(mbr_steps));
 mutex_unlock(&dev->dev_lock);

 return ret;
}
