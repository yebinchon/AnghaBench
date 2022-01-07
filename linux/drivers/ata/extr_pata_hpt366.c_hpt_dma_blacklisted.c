
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int id; } ;
typedef int model_num ;


 int ATA_ID_PROD ;
 int ATA_ID_PROD_LEN ;
 int ata_id_c_string (int ,unsigned char*,int ,int) ;
 int match_string (char const* const*,int,unsigned char*) ;
 int pr_warn (char*,char*,char const* const) ;

__attribute__((used)) static int hpt_dma_blacklisted(const struct ata_device *dev, char *modestr,
          const char * const list[])
{
 unsigned char model_num[ATA_ID_PROD_LEN + 1];
 int i;

 ata_id_c_string(dev->id, model_num, ATA_ID_PROD, sizeof(model_num));

 i = match_string(list, -1, model_num);
 if (i >= 0) {
  pr_warn("%s is not supported for %s\n", modestr, list[i]);
  return 1;
 }
 return 0;
}
