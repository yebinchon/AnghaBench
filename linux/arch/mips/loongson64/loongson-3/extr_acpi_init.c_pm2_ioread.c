
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PM2_INDEX ;
 int pmio_read_index (int ,int ) ;

u8 pm2_ioread(u8 reg)
{
 return pmio_read_index(PM2_INDEX, reg);
}
