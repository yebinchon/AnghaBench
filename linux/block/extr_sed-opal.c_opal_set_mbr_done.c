
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_step {int member_0; int * member_1; } ;
struct opal_mbr_done {scalar_t__ done_flag; int key; } ;
struct opal_dev {int dev_lock; } ;


 int ARRAY_SIZE (struct opal_step const*) ;
 int EINVAL ;
 int OPAL_FALSE ;
 scalar_t__ OPAL_MBR_DONE ;
 scalar_t__ OPAL_MBR_NOT_DONE ;
 int OPAL_TRUE ;
 int end_opal_session ;
 int execute_steps (struct opal_dev*,struct opal_step const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_mbr_done ;
 int setup_opal_dev (struct opal_dev*) ;
 int start_admin1LSP_opal_session ;

__attribute__((used)) static int opal_set_mbr_done(struct opal_dev *dev,
        struct opal_mbr_done *mbr_done)
{
 u8 mbr_done_tf = mbr_done->done_flag == OPAL_MBR_DONE ?
  OPAL_TRUE : OPAL_FALSE;

 const struct opal_step mbr_steps[] = {
  { start_admin1LSP_opal_session, &mbr_done->key },
  { set_mbr_done, &mbr_done_tf },
  { end_opal_session, }
 };
 int ret;

 if (mbr_done->done_flag != OPAL_MBR_DONE &&
     mbr_done->done_flag != OPAL_MBR_NOT_DONE)
  return -EINVAL;

 mutex_lock(&dev->dev_lock);
 setup_opal_dev(dev);
 ret = execute_steps(dev, mbr_steps, ARRAY_SIZE(mbr_steps));
 mutex_unlock(&dev->dev_lock);

 return ret;
}
