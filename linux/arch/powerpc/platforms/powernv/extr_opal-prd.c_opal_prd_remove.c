
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int OPAL_MSG_PRD ;
 int misc_deregister (int *) ;
 int opal_message_notifier_unregister (int ,int *) ;
 int opal_prd_dev ;
 int opal_prd_event_nb ;

__attribute__((used)) static int opal_prd_remove(struct platform_device *pdev)
{
 misc_deregister(&opal_prd_dev);
 opal_message_notifier_unregister(OPAL_MSG_PRD, &opal_prd_event_nb);
 return 0;
}
