
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_msi_priv_data {int (* write_msg ) (struct msi_desc*,struct msi_msg*) ;} ;
struct msi_msg {int dummy; } ;
struct TYPE_2__ {struct platform_msi_priv_data* msi_priv_data; } ;
struct msi_desc {TYPE_1__ platform; } ;
struct irq_data {int dummy; } ;


 struct msi_desc* irq_data_get_msi_desc (struct irq_data*) ;
 int stub1 (struct msi_desc*,struct msi_msg*) ;

__attribute__((used)) static void platform_msi_write_msg(struct irq_data *data, struct msi_msg *msg)
{
 struct msi_desc *desc = irq_data_get_msi_desc(data);
 struct platform_msi_priv_data *priv_data;

 priv_data = desc->platform.msi_priv_data;

 priv_data->write_msg(desc, msg);
}
