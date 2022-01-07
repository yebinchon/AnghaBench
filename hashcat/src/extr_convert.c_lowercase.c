
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ tolower (int) ;

void lowercase (u8 *buf, const size_t len)
{
  for (size_t i = 0; i < len; i++) buf[i] = (u8) tolower ((int) buf[i]);
}
