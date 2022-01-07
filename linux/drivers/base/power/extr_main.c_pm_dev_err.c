
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ pm_message_t ;


 int dev_name (struct device*) ;
 int pm_verb (int ) ;
 int pr_err (char*,int ,int ,char const*,int) ;

__attribute__((used)) static void pm_dev_err(struct device *dev, pm_message_t state, const char *info,
   int error)
{
 pr_err("Device %s failed to %s%s: error %d\n",
        dev_name(dev), pm_verb(state.event), info, error);
}
