
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char hex (int) ;

void set_packet_header(char *buf, int size)
{
 static char hexchar[] = "0123456789abcdef";


 buf[0] = (hexchar[(size >> 12) & 15]);
 buf[1] = (hexchar[(size >> 8) & 15]);
 buf[2] = (hexchar[(size >> 4) & 15]);
 buf[3] = (hexchar[(size) & 15]);

}
