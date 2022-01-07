
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u32 ;
struct hci_dev {int dummy; } ;
typedef enum qca_btsoc_type { ____Placeholder_qca_btsoc_type } qca_btsoc_type ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
     enum qca_btsoc_type soc_type, u32 soc_ver,
     const char *firmware_name)
{
 return -EOPNOTSUPP;
}
