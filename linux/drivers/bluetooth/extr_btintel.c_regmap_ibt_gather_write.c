
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct regmap_ibt_context {int hdev; int op_write; } ;
struct ibt_cp_reg_access {size_t len; int addr; int data; int mode; } ;
typedef int __le32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_CMD_TIMEOUT ;
 int IBT_REG_MODE_16BIT ;
 int IBT_REG_MODE_32BIT ;
 int IBT_REG_MODE_8BIT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int bt_dev_dbg (int ,char*,int ) ;
 int bt_dev_err (int ,char*,int ,int) ;
 struct sk_buff* hci_cmd_sync (int ,int ,int,struct ibt_cp_reg_access*,int ) ;
 int kfree (struct ibt_cp_reg_access*) ;
 int kfree_skb (struct sk_buff*) ;
 struct ibt_cp_reg_access* kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static int regmap_ibt_gather_write(void *context,
       const void *addr, size_t reg_size,
       const void *val, size_t val_size)
{
 struct regmap_ibt_context *ctx = context;
 struct ibt_cp_reg_access *cp;
 struct sk_buff *skb;
 int plen = sizeof(*cp) + val_size;
 u8 mode;
 int err = 0;

 if (reg_size != sizeof(__le32))
  return -EINVAL;

 switch (val_size) {
 case 1:
  mode = IBT_REG_MODE_8BIT;
  break;
 case 2:
  mode = IBT_REG_MODE_16BIT;
  break;
 case 4:
  mode = IBT_REG_MODE_32BIT;
  break;
 default:
  return -EINVAL;
 }

 cp = kmalloc(plen, GFP_KERNEL);
 if (!cp)
  return -ENOMEM;


 cp->addr = *(__le32 *)addr;
 cp->mode = mode;
 cp->len = val_size;
 memcpy(&cp->data, val, val_size);

 bt_dev_dbg(ctx->hdev, "Register (0x%x) write", le32_to_cpu(cp->addr));

 skb = hci_cmd_sync(ctx->hdev, ctx->op_write, plen, cp, HCI_CMD_TIMEOUT);
 if (IS_ERR(skb)) {
  err = PTR_ERR(skb);
  bt_dev_err(ctx->hdev, "regmap: Register (0x%x) write error (%d)",
      le32_to_cpu(cp->addr), err);
  goto done;
 }
 kfree_skb(skb);

done:
 kfree(cp);
 return err;
}
