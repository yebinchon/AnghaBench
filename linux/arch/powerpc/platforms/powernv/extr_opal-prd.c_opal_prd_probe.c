
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EBUSY ;
 int ENODEV ;
 int OPAL_MSG_PRD ;
 int OPAL_MSG_PRD2 ;
 int misc_register (int *) ;
 int opal_message_notifier_register (int ,int *) ;
 int opal_message_notifier_unregister (int ,int *) ;
 int opal_prd_dev ;
 int opal_prd_event_nb ;
 int pr_err (char*) ;
 scalar_t__ prd_node ;

__attribute__((used)) static int opal_prd_probe(struct platform_device *pdev)
{
 int rc;

 if (!pdev || !pdev->dev.of_node)
  return -ENODEV;




 if (prd_node)
  return -EBUSY;

 prd_node = pdev->dev.of_node;

 rc = opal_message_notifier_register(OPAL_MSG_PRD, &opal_prd_event_nb);
 if (rc) {
  pr_err("Couldn't register event notifier\n");
  return rc;
 }

 rc = opal_message_notifier_register(OPAL_MSG_PRD2, &opal_prd_event_nb);
 if (rc) {
  pr_err("Couldn't register PRD2 event notifier\n");
  return rc;
 }

 rc = misc_register(&opal_prd_dev);
 if (rc) {
  pr_err("failed to register miscdev\n");
  opal_message_notifier_unregister(OPAL_MSG_PRD,
    &opal_prd_event_nb);
  return rc;
 }

 return 0;
}
