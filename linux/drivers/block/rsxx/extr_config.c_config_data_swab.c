
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsxx_card_cfg {int data; } ;


 int swab32 (int ) ;

__attribute__((used)) static void config_data_swab(struct rsxx_card_cfg *cfg)
{
 u32 *data = (u32 *) &cfg->data;
 int i;

 for (i = 0; i < (sizeof(cfg->data) / 4); i++)
  data[i] = swab32(data[i]);
}
