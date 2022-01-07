
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_step {int member_0; } ;
struct opal_dev {int dummy; } ;


 int end_opal_session ;
 int execute_step (struct opal_dev*,struct opal_step const*,int ) ;

__attribute__((used)) static int end_opal_session_error(struct opal_dev *dev)
{
 const struct opal_step error_end_session = {
  end_opal_session,
 };

 return execute_step(dev, &error_end_session, 0);
}
