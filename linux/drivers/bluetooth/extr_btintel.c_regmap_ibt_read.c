
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct regmap_ibt_context {int hdev; int op_read; } ;
struct ibt_rp_reg_access {scalar_t__ addr; int data; } ;
struct ibt_cp_reg_access {scalar_t__ addr; size_t len; int mode; } ;
typedef int cp ;
typedef scalar_t__ __le32 ;


 int EINVAL ;
 int HCI_CMD_TIMEOUT ;
 int IBT_REG_MODE_16BIT ;
 int IBT_REG_MODE_32BIT ;
 int IBT_REG_MODE_8BIT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int bt_dev_dbg (int ,char*,int ) ;
 int bt_dev_err (int ,char*,int ,...) ;
 struct sk_buff* hci_cmd_sync (int ,int ,int,struct ibt_cp_reg_access*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int le32_to_cpu (scalar_t__) ;
 int memcpy (void*,int ,size_t) ;

__attribute__((used)) static int regmap_ibt_read(void *context, const void *addr, size_t reg_size,
      void *val, size_t val_size)
{
 struct regmap_ibt_context *ctx = context;
 struct ibt_cp_reg_access cp;
 struct ibt_rp_reg_access *rp;
 struct sk_buff *skb;
 int err = 0;

 if (reg_size != sizeof(__le32))
  return -EINVAL;

 switch (val_size) {
 case 1:
  cp.mode = IBT_REG_MODE_8BIT;
  break;
 case 2:
  cp.mode = IBT_REG_MODE_16BIT;
  break;
 case 4:
  cp.mode = IBT_REG_MODE_32BIT;
  break;
 default:
  return -EINVAL;
 }


 cp.addr = *(__le32 *)addr;
 cp.len = val_size;

 bt_dev_dbg(ctx->hdev, "Register (0x%x) read", le32_to_cpu(cp.addr));

 skb = hci_cmd_sync(ctx->hdev, ctx->op_read, sizeof(cp), &cp,
      HCI_CMD_TIMEOUT);
 if (IS_ERR(skb)) {
  err = PTR_ERR(skb);
  bt_dev_err(ctx->hdev, "regmap: Register (0x%x) read error (%d)",
      le32_to_cpu(cp.addr), err);
  return err;
 }

 if (skb->len != sizeof(*rp) + val_size) {
  bt_dev_err(ctx->hdev, "regmap: Register (0x%x) read error, bad len",
      le32_to_cpu(cp.addr));
  err = -EINVAL;
  goto done;
 }

 rp = (struct ibt_rp_reg_access *)skb->data;

 if (rp->addr != cp.addr) {
  bt_dev_err(ctx->hdev, "regmap: Register (0x%x) read error, bad addr",
      le32_to_cpu(rp->addr));
  err = -EINVAL;
  goto done;
 }

 memcpy(val, rp->data, val_size);

done:
 kfree_skb(skb);
 return err;
}
