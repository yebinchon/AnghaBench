
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int at93c_write (int ,int ) ;

int EEPROMWrite(unsigned int pos, unsigned char *data, int len)
{
 int i;

 for (i = 0; i < len; i++)
  at93c_write(pos++, *data++);

 return 0;
}
