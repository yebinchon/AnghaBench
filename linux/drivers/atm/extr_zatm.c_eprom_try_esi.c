
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zatm_dev {int dummy; } ;
struct atm_dev {int esi; } ;


 int ESI_LEN ;
 struct zatm_dev* ZATM_DEV (struct atm_dev*) ;
 int ZEPROM_ADDR_LEN ;
 int ZEPROM_CMD_LEN ;
 int ZEPROM_CMD_READ ;
 int ZEPROM_CS ;
 int ZEPROM_SIZE ;
 int eprom_get_byte (struct zatm_dev*,unsigned char*,unsigned short) ;
 int eprom_put_bits (struct zatm_dev*,int,int ,unsigned short) ;
 int eprom_set (struct zatm_dev*,int ,unsigned short) ;
 int memcmp (int ,char*,int ) ;
 int memcpy (int ,unsigned char*,int ) ;

__attribute__((used)) static int eprom_try_esi(struct atm_dev *dev, unsigned short cmd, int offset,
    int swap)
{
 unsigned char buf[ZEPROM_SIZE];
 struct zatm_dev *zatm_dev;
 int i;

 zatm_dev = ZATM_DEV(dev);
 for (i = 0; i < ZEPROM_SIZE; i += 2) {
  eprom_set(zatm_dev,ZEPROM_CS,cmd);
  eprom_put_bits(zatm_dev,ZEPROM_CMD_READ,ZEPROM_CMD_LEN,cmd);
  eprom_put_bits(zatm_dev,i >> 1,ZEPROM_ADDR_LEN,cmd);
  eprom_get_byte(zatm_dev,buf+i+swap,cmd);
  eprom_get_byte(zatm_dev,buf+i+1-swap,cmd);
  eprom_set(zatm_dev,0,cmd);
 }
 memcpy(dev->esi,buf+offset,ESI_LEN);
 return memcmp(dev->esi,"\0\0\0\0\0",ESI_LEN);
}
