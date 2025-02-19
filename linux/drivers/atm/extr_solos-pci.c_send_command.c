
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct solos_card {TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct pkt_hdr {void* type; void* vci; void* vpi; void* size; } ;
struct TYPE_2__ {int dev; } ;


 int BUF_SIZE ;
 int GFP_ATOMIC ;
 size_t PKT_COMMAND ;
 struct sk_buff* alloc_skb (size_t,int ) ;
 void* cpu_to_le16 (size_t) ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*) ;
 int fpga_queue (struct solos_card*,int,struct sk_buff*,int *) ;
 struct pkt_hdr* skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,char const*,size_t) ;

__attribute__((used)) static int send_command(struct solos_card *card, int dev, const char *buf, size_t size)
{
 struct sk_buff *skb;
 struct pkt_hdr *header;

 if (size > (BUF_SIZE - sizeof(*header))) {
  dev_dbg(&card->dev->dev, "Command is too big.  Dropping request\n");
  return 0;
 }
 skb = alloc_skb(size + sizeof(*header), GFP_ATOMIC);
 if (!skb) {
  dev_warn(&card->dev->dev, "Failed to allocate sk_buff in send_command()\n");
  return 0;
 }

 header = skb_put(skb, sizeof(*header));

 header->size = cpu_to_le16(size);
 header->vpi = cpu_to_le16(0);
 header->vci = cpu_to_le16(0);
 header->type = cpu_to_le16(PKT_COMMAND);

 skb_put_data(skb, buf, size);

 fpga_queue(card, dev, skb, ((void*)0));

 return 0;
}
