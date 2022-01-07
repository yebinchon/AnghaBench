
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct btqcomsmd {int acl_channel; int cmd_channel; int hdev; } ;


 int hci_free_dev (int ) ;
 int hci_unregister_dev (int ) ;
 struct btqcomsmd* platform_get_drvdata (struct platform_device*) ;
 int rpmsg_destroy_ept (int ) ;

__attribute__((used)) static int btqcomsmd_remove(struct platform_device *pdev)
{
 struct btqcomsmd *btq = platform_get_drvdata(pdev);

 hci_unregister_dev(btq->hdev);
 hci_free_dev(btq->hdev);

 rpmsg_destroy_ept(btq->cmd_channel);
 rpmsg_destroy_ept(btq->acl_channel);

 return 0;
}
