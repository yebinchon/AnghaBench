
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ class_upper (char) ;

__attribute__((used)) static void MANGLE_LOWER_AT (char *arr, const int pos)
{
  if (class_upper (arr[pos])) arr[pos] ^= 0x20;
}
