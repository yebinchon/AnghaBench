
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int smbus_read (int) ;
 int smbus_write (int,unsigned int) ;

__attribute__((used)) static void smbus_enable(int offset, int bit)
{
 unsigned int cfg = smbus_read(offset);

 cfg |= bit;
 smbus_write(offset, cfg);
}
