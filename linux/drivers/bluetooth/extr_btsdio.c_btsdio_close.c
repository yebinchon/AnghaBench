
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct btsdio_data {int func; } ;


 int BT_DBG (char*,int ) ;
 int REG_EN_INTRD ;
 struct btsdio_data* hci_get_drvdata (struct hci_dev*) ;
 int sdio_claim_host (int ) ;
 int sdio_disable_func (int ) ;
 int sdio_release_host (int ) ;
 int sdio_release_irq (int ) ;
 int sdio_writeb (int ,int,int ,int *) ;

__attribute__((used)) static int btsdio_close(struct hci_dev *hdev)
{
 struct btsdio_data *data = hci_get_drvdata(hdev);

 BT_DBG("%s", hdev->name);

 sdio_claim_host(data->func);

 sdio_writeb(data->func, 0x00, REG_EN_INTRD, ((void*)0));

 sdio_release_irq(data->func);
 sdio_disable_func(data->func);

 sdio_release_host(data->func);

 return 0;
}
