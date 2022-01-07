
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_reconfig_data {int dn; } ;
struct notifier_block {int dummy; } ;




 int notifier_from_errno (int) ;
 int pseries_add_processor (int ) ;
 int pseries_remove_processor (int ) ;

__attribute__((used)) static int pseries_smp_notifier(struct notifier_block *nb,
    unsigned long action, void *data)
{
 struct of_reconfig_data *rd = data;
 int err = 0;

 switch (action) {
 case 129:
  err = pseries_add_processor(rd->dn);
  break;
 case 128:
  pseries_remove_processor(rd->dn);
  break;
 }
 return notifier_from_errno(err);
}
