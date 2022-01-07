
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_dev {int dummy; } ;


 int ZEPROM_V1_ESI_OFF ;
 int ZEPROM_V1_REG ;
 int ZEPROM_V2_ESI_OFF ;
 int ZEPROM_V2_REG ;
 scalar_t__ eprom_try_esi (struct atm_dev*,int ,int ,int) ;

__attribute__((used)) static void eprom_get_esi(struct atm_dev *dev)
{
 if (eprom_try_esi(dev,ZEPROM_V1_REG,ZEPROM_V1_ESI_OFF,1)) return;
 (void) eprom_try_esi(dev,ZEPROM_V2_REG,ZEPROM_V2_ESI_OFF,0);
}
