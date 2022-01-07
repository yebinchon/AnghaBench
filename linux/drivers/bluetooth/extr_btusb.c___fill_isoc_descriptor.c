
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int number_of_packets; TYPE_1__* iso_frame_desc; } ;
struct TYPE_2__ {int offset; int length; } ;


 int BTUSB_MAX_ISOC_FRAMES ;
 int BT_DBG (char*,int,int) ;

__attribute__((used)) static inline void __fill_isoc_descriptor(struct urb *urb, int len, int mtu)
{
 int i, offset = 0;

 BT_DBG("len %d mtu %d", len, mtu);

 for (i = 0; i < BTUSB_MAX_ISOC_FRAMES && len >= mtu;
     i++, offset += mtu, len -= mtu) {
  urb->iso_frame_desc[i].offset = offset;
  urb->iso_frame_desc[i].length = mtu;
 }

 if (len && i < BTUSB_MAX_ISOC_FRAMES) {
  urb->iso_frame_desc[i].offset = offset;
  urb->iso_frame_desc[i].length = len;
  i++;
 }

 urb->number_of_packets = i;
}
