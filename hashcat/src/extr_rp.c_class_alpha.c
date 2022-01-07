
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ class_lower (int const) ;
 scalar_t__ class_upper (int const) ;

bool class_alpha (const u8 c)
{
  return (class_lower (c) || class_upper (c));
}
