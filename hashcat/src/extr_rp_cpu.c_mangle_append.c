
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RP_PASSWORD_SIZE ;

__attribute__((used)) static int mangle_append (char arr[RP_PASSWORD_SIZE], int arr_len, char c)
{
  if ((arr_len + 1) >= RP_PASSWORD_SIZE) return (arr_len);

  arr[arr_len] = c;

  return (arr_len + 1);
}
