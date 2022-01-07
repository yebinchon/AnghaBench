
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_step {int dummy; } ;
struct opal_dev {int dummy; } ;


 int end_opal_session_error (struct opal_dev*) ;
 int execute_step (struct opal_dev*,struct opal_step const*,size_t) ;
 int opal_discovery0_step (struct opal_dev*) ;

__attribute__((used)) static int execute_steps(struct opal_dev *dev,
    const struct opal_step *steps, size_t n_steps)
{
 size_t state = 0;
 int error;


 error = opal_discovery0_step(dev);
 if (error)
  return error;

 for (state = 0; state < n_steps; state++) {
  error = execute_step(dev, &steps[state], state);
  if (error)
   goto out_error;
 }

 return 0;

out_error:
 if (state > 0)
  end_opal_session_error(dev);

 return error;
}
