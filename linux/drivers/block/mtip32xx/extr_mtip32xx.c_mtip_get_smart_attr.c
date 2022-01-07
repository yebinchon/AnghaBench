
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smart_attr {unsigned int attr_id; } ;
struct mtip_port {int* identify; TYPE_2__* dd; scalar_t__ smart_buf; int smart_buf_dma; int identify_valid; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int ATA_SECT_SIZE ;
 int EINVAL ;
 int EPERM ;
 int dev_warn (int *,char*) ;
 int memcpy (struct smart_attr*,struct smart_attr*,int) ;
 int memset (scalar_t__,int ,int ) ;
 int mtip_get_smart_data (struct mtip_port*,scalar_t__,int ) ;

__attribute__((used)) static int mtip_get_smart_attr(struct mtip_port *port, unsigned int id,
      struct smart_attr *attrib)
{
 int rv, i;
 struct smart_attr *pattr;

 if (!attrib)
  return -EINVAL;

 if (!port->identify_valid) {
  dev_warn(&port->dd->pdev->dev, "IDENTIFY DATA not valid\n");
  return -EPERM;
 }
 if (!(port->identify[82] & 0x1)) {
  dev_warn(&port->dd->pdev->dev, "SMART not supported\n");
  return -EPERM;
 }
 if (!(port->identify[85] & 0x1)) {
  dev_warn(&port->dd->pdev->dev, "SMART not enabled\n");
  return -EPERM;
 }

 memset(port->smart_buf, 0, ATA_SECT_SIZE);
 rv = mtip_get_smart_data(port, port->smart_buf, port->smart_buf_dma);
 if (rv) {
  dev_warn(&port->dd->pdev->dev, "Failed to ge SMART data\n");
  return rv;
 }

 pattr = (struct smart_attr *)(port->smart_buf + 2);
 for (i = 0; i < 29; i++, pattr++)
  if (pattr->attr_id == id) {
   memcpy(attrib, pattr, sizeof(struct smart_attr));
   break;
  }

 if (i == 29) {
  dev_warn(&port->dd->pdev->dev,
   "Query for invalid SMART attribute ID\n");
  rv = -EINVAL;
 }

 return rv;
}
