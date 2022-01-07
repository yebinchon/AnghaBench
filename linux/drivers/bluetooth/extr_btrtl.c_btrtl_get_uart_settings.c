
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_vendor_config_entry {int len; int* data; int offset; } ;
struct rtl_vendor_config {scalar_t__ entry; int total_len; int signature; } ;
struct hci_dev {int dummy; } ;
struct btrtl_device_info {int cfg_len; scalar_t__ cfg_data; } ;


 int BIT (int) ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ RTL_CONFIG_MAGIC ;
 unsigned int btrtl_convert_baudrate (int) ;
 int get_unaligned_le32 (int*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int rtl_dev_dbg (struct hci_dev*,char*,int,...) ;
 int rtl_dev_err (struct hci_dev*,char*) ;
 int rtl_dev_warn (struct hci_dev*,char*) ;

int btrtl_get_uart_settings(struct hci_dev *hdev,
       struct btrtl_device_info *btrtl_dev,
       unsigned int *controller_baudrate,
       u32 *device_baudrate, bool *flow_control)
{
 struct rtl_vendor_config *config;
 struct rtl_vendor_config_entry *entry;
 int i, total_data_len;
 bool found = 0;

 total_data_len = btrtl_dev->cfg_len - sizeof(*config);
 if (total_data_len <= 0) {
  rtl_dev_warn(hdev, "no config loaded");
  return -EINVAL;
 }

 config = (struct rtl_vendor_config *)btrtl_dev->cfg_data;
 if (le32_to_cpu(config->signature) != RTL_CONFIG_MAGIC) {
  rtl_dev_err(hdev, "invalid config magic");
  return -EINVAL;
 }

 if (total_data_len < le16_to_cpu(config->total_len)) {
  rtl_dev_err(hdev, "config is too short");
  return -EINVAL;
 }

 for (i = 0; i < total_data_len; ) {
  entry = ((void *)config->entry) + i;

  switch (le16_to_cpu(entry->offset)) {
  case 0xc:
   if (entry->len < sizeof(*device_baudrate)) {
    rtl_dev_err(hdev, "invalid UART config entry");
    return -EINVAL;
   }

   *device_baudrate = get_unaligned_le32(entry->data);
   *controller_baudrate = btrtl_convert_baudrate(
       *device_baudrate);

   if (entry->len >= 13)
    *flow_control = !!(entry->data[12] & BIT(2));
   else
    *flow_control = 0;

   found = 1;
   break;

  default:
   rtl_dev_dbg(hdev, "skipping config entry 0x%x (len %u)",
       le16_to_cpu(entry->offset), entry->len);
   break;
  };

  i += sizeof(*entry) + entry->len;
 }

 if (!found) {
  rtl_dev_err(hdev, "no UART config entry found");
  return -ENOENT;
 }

 rtl_dev_dbg(hdev, "device baudrate = 0x%08x", *device_baudrate);
 rtl_dev_dbg(hdev, "controller baudrate = %u", *controller_baudrate);
 rtl_dev_dbg(hdev, "flow control %d", *flow_control);

 return 0;
}
