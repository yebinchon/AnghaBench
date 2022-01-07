
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ class_num (int const) ;
 scalar_t__ class_upper (int const) ;

int conv_ctoi (const u8 c)
{
  if (class_num (c)) return c - '0';
  if (class_upper (c)) return c - 'A' + 10;

  return -1;
}
