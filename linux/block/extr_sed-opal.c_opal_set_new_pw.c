
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opal_step {int member_0; TYPE_1__* member_1; } ;
struct TYPE_2__ {scalar_t__ who; } ;
struct opal_new_pw {TYPE_1__ new_user_pw; TYPE_1__ session; } ;
struct opal_dev {int dev_lock; } ;


 int ARRAY_SIZE (struct opal_step const*) ;
 int EINVAL ;
 scalar_t__ OPAL_USER9 ;
 int end_opal_session ;
 int execute_steps (struct opal_dev*,struct opal_step const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_new_pw ;
 int setup_opal_dev (struct opal_dev*) ;
 int start_auth_opal_session ;

__attribute__((used)) static int opal_set_new_pw(struct opal_dev *dev, struct opal_new_pw *opal_pw)
{
 const struct opal_step pw_steps[] = {
  { start_auth_opal_session, &opal_pw->session },
  { set_new_pw, &opal_pw->new_user_pw },
  { end_opal_session, }
 };
 int ret;

 if (opal_pw->session.who > OPAL_USER9 ||
     opal_pw->new_user_pw.who > OPAL_USER9)
  return -EINVAL;

 mutex_lock(&dev->dev_lock);
 setup_opal_dev(dev);
 ret = execute_steps(dev, pw_steps, ARRAY_SIZE(pw_steps));
 mutex_unlock(&dev->dev_lock);

 return ret;
}
