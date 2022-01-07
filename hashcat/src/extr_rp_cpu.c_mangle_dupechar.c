
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RP_PASSWORD_SIZE ;

__attribute__((used)) static int mangle_dupechar (char arr[RP_PASSWORD_SIZE], int arr_len)
{
  if ( arr_len == 0) return (arr_len);
  if ((arr_len + arr_len) >= RP_PASSWORD_SIZE) return (arr_len);

  int arr_pos;

  for (arr_pos = arr_len - 1; arr_pos > -1; arr_pos--)
  {
    int new_pos = arr_pos * 2;

    arr[new_pos] = arr[arr_pos];

    arr[new_pos + 1] = arr[arr_pos];
  }

  return (arr_len * 2);
}
