
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct ghes {int list; int irq; int timer; int flags; struct acpi_hest_generic* generic; } ;
struct TYPE_2__ {int type; } ;
struct acpi_hest_generic {TYPE_1__ notify; } ;
 int BUG () ;
 int GHES_EXITING ;
 int apei_sdei_unregister_ghes (struct ghes*) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct ghes*) ;
 int ghes_edac_unregister (struct ghes*) ;
 int ghes_fini (struct ghes*) ;
 int ghes_hed ;
 int ghes_list_mutex ;
 int ghes_nmi_remove (struct ghes*) ;
 int ghes_notifier_hed ;
 int ghes_sea_remove (struct ghes*) ;
 int kfree (struct ghes*) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ghes* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int synchronize_rcu () ;
 int unregister_acpi_hed_notifier (int *) ;

__attribute__((used)) static int ghes_remove(struct platform_device *ghes_dev)
{
 int rc;
 struct ghes *ghes;
 struct acpi_hest_generic *generic;

 ghes = platform_get_drvdata(ghes_dev);
 generic = ghes->generic;

 ghes->flags |= GHES_EXITING;
 switch (generic->notify.type) {
 case 131:
  del_timer_sync(&ghes->timer);
  break;
 case 135:
  free_irq(ghes->irq, ghes);
  break;

 case 130:
 case 133:
 case 134:
  mutex_lock(&ghes_list_mutex);
  list_del_rcu(&ghes->list);
  if (list_empty(&ghes_hed))
   unregister_acpi_hed_notifier(&ghes_notifier_hed);
  mutex_unlock(&ghes_list_mutex);
  synchronize_rcu();
  break;

 case 129:
  ghes_sea_remove(ghes);
  break;
 case 132:
  ghes_nmi_remove(ghes);
  break;
 case 128:
  rc = apei_sdei_unregister_ghes(ghes);
  if (rc)
   return rc;
  break;
 default:
  BUG();
  break;
 }

 ghes_fini(ghes);

 ghes_edac_unregister(ghes);

 kfree(ghes);

 platform_set_drvdata(ghes_dev, ((void*)0));

 return 0;
}
