
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_dev {int dummy; } ;
struct btrtl_device_info {int dummy; } ;


 int ENOENT ;

__attribute__((used)) static inline int btrtl_get_uart_settings(struct hci_dev *hdev,
       struct btrtl_device_info *btrtl_dev,
       unsigned int *controller_baudrate,
       u32 *device_baudrate,
       bool *flow_control)
{
 return -ENOENT;
}
