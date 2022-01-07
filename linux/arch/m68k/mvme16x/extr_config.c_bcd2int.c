
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int bcd2int (unsigned char b)
{
 return ((b>>4)*10 + (b&15));
}
