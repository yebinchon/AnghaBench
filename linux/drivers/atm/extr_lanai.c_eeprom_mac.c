
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lanai_dev {int const* eeprom; } ;


 size_t EEPROM_MAC ;

__attribute__((used)) static inline const u8 *eeprom_mac(const struct lanai_dev *lanai)
{
 return &lanai->eeprom[EEPROM_MAC];
}
