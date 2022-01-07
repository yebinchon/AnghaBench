
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsxx_cardinfo {int config; } ;
struct TYPE_2__ {scalar_t__ version; int crc; } ;
struct rsxx_card_cfg {TYPE_1__ hdr; } ;
typedef int cfg ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int CREG_ADD_CONFIG ;
 int EINVAL ;
 scalar_t__ RSXX_CFG_VERSION ;
 int config_data_cpu_to_le (struct rsxx_card_cfg*) ;
 int config_data_crc32 (struct rsxx_card_cfg*) ;
 int config_data_swab (struct rsxx_card_cfg*) ;
 int config_hdr_cpu_to_be (TYPE_1__*) ;
 int dev_err (int ,char*,scalar_t__) ;
 int memcpy (struct rsxx_card_cfg*,int *,int) ;
 int rsxx_creg_write (struct rsxx_cardinfo*,int ,int,struct rsxx_card_cfg*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rsxx_save_config(struct rsxx_cardinfo *card)
{
 struct rsxx_card_cfg cfg;
 int st;

 memcpy(&cfg, &card->config, sizeof(cfg));

 if (unlikely(cfg.hdr.version != RSXX_CFG_VERSION)) {
  dev_err(CARD_TO_DEV(card),
   "Cannot save config with invalid version %d\n",
   cfg.hdr.version);
  return -EINVAL;
 }


 config_data_cpu_to_le(&cfg);

 cfg.hdr.crc = config_data_crc32(&cfg);





 config_data_swab(&cfg);
 config_hdr_cpu_to_be(&cfg.hdr);

 st = rsxx_creg_write(card, CREG_ADD_CONFIG, sizeof(cfg), &cfg, 1);
 if (st)
  return st;

 return 0;
}
