
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_bulk_data {int dummy; } ;
struct qca_vreg {int name; } ;
struct qca_power {TYPE_1__* vreg_bulk; int dev; } ;
struct TYPE_3__ {int supply; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* devm_kcalloc (int ,size_t,int,int ) ;
 int devm_regulator_bulk_get (int ,size_t,TYPE_1__*) ;

__attribute__((used)) static int qca_init_regulators(struct qca_power *qca,
    const struct qca_vreg *vregs, size_t num_vregs)
{
 int i;

 qca->vreg_bulk = devm_kcalloc(qca->dev, num_vregs,
          sizeof(struct regulator_bulk_data),
          GFP_KERNEL);
 if (!qca->vreg_bulk)
  return -ENOMEM;

 for (i = 0; i < num_vregs; i++)
  qca->vreg_bulk[i].supply = vregs[i].name;

 return devm_regulator_bulk_get(qca->dev, num_vregs, qca->vreg_bulk);
}
