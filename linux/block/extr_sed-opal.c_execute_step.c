
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_step {int (* fn ) (struct opal_dev*,int ) ;int data; } ;
struct opal_dev {int dummy; } ;


 int opal_error_to_human (int) ;
 int pr_debug (char*,size_t,int (*) (struct opal_dev*,int ),int,int ) ;
 int stub1 (struct opal_dev*,int ) ;

__attribute__((used)) static int execute_step(struct opal_dev *dev,
   const struct opal_step *step, size_t stepIndex)
{
 int error = step->fn(dev, step->data);

 if (error) {
  pr_debug("Step %zu (%pS) failed with error %d: %s\n",
    stepIndex, step->fn, error,
    opal_error_to_human(error));
 }

 return error;
}
