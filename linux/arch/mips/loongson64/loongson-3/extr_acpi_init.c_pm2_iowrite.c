
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PM2_INDEX ;
 int pmio_write_index (int ,int ,int ) ;

void pm2_iowrite(u8 reg, u8 value)
{
 pmio_write_index(PM2_INDEX, reg, value);
}
