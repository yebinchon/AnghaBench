
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lasat_eeprom_struct {int dummy; } ;
struct TYPE_3__ {unsigned long crc32; } ;
struct TYPE_4__ {TYPE_1__ li_eeprom_info; } ;


 int EEPROMWrite (int ,unsigned char*,int) ;
 unsigned long EEPROM_CRC (unsigned char*,int) ;
 TYPE_2__ lasat_board_info ;
 int lasat_eeprom_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void lasat_write_eeprom_info(void)
{
 unsigned long crc;

 mutex_lock(&lasat_eeprom_mutex);


 crc = EEPROM_CRC((unsigned char *)(&lasat_board_info.li_eeprom_info),
      sizeof(struct lasat_eeprom_struct) - 4);
 lasat_board_info.li_eeprom_info.crc32 = crc;


 EEPROMWrite(0, (unsigned char *)&lasat_board_info.li_eeprom_info,
      sizeof(struct lasat_eeprom_struct));

 mutex_unlock(&lasat_eeprom_mutex);
}
