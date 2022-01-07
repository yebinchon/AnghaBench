
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct regmap_ibt_context {struct hci_dev* hdev; void* op_write; void* op_read; } ;
struct regmap {int dummy; } ;
struct hci_dev {int dev; } ;


 int ENOMEM ;
 struct regmap* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int bt_dev_info (struct hci_dev*,char*,void*,void*) ;
 struct regmap_ibt_context* kzalloc (int,int ) ;
 int regmap_ibt ;
 int regmap_ibt_cfg ;
 struct regmap* regmap_init (int *,int *,struct regmap_ibt_context*,int *) ;

struct regmap *btintel_regmap_init(struct hci_dev *hdev, u16 opcode_read,
       u16 opcode_write)
{
 struct regmap_ibt_context *ctx;

 bt_dev_info(hdev, "regmap: Init R%x-W%x region", opcode_read,
      opcode_write);

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ERR_PTR(-ENOMEM);

 ctx->op_read = opcode_read;
 ctx->op_write = opcode_write;
 ctx->hdev = hdev;

 return regmap_init(&hdev->dev, &regmap_ibt, ctx, &regmap_ibt_cfg);
}
