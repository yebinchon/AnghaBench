
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int FastChecksum(void *buffer, int bytes)
{
 int checksum = 0;
 char *buf = buffer;

 while( bytes-- )
  checksum = (checksum << 4) ^ *(buf++);

 return checksum;
}
