
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ver ;
struct usb_device {int dummy; } ;
struct qca_version {int rom_version; } ;


 int QCA_GET_TARGET_VERSION ;
 scalar_t__ btusb_qca_send_vendor_req (struct usb_device*,int ,struct qca_version*,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static bool btusb_qca_need_patch(struct usb_device *udev)
{
 struct qca_version ver;

 if (btusb_qca_send_vendor_req(udev, QCA_GET_TARGET_VERSION, &ver,
          sizeof(ver)) < 0)
  return 0;

 return !(le32_to_cpu(ver.rom_version) & ~0xffffU);
}
