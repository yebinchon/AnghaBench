
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_dev {int magicno; scalar_t__ serialno; } ;


 int EEPROM_MAGIC_VALUE ;

__attribute__((used)) static int eeprom_validate(struct lanai_dev *lanai)
{
 lanai->serialno = 0;
 lanai->magicno = EEPROM_MAGIC_VALUE;
 return 0;
}
