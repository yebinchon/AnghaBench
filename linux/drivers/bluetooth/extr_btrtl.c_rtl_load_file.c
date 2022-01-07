
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int dev; } ;
struct firmware {int size; int data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmemdup (int ,int,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 int rtl_dev_info (struct hci_dev*,char*,char const*) ;

__attribute__((used)) static int rtl_load_file(struct hci_dev *hdev, const char *name, u8 **buff)
{
 const struct firmware *fw;
 int ret;

 rtl_dev_info(hdev, "loading %s", name);
 ret = request_firmware(&fw, name, &hdev->dev);
 if (ret < 0)
  return ret;
 ret = fw->size;
 *buff = kmemdup(fw->data, ret, GFP_KERNEL);
 if (!*buff)
  ret = -ENOMEM;

 release_firmware(fw);

 return ret;
}
