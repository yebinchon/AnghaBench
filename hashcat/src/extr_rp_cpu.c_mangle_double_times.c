
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RP_PASSWORD_SIZE ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int mangle_double_times (char arr[RP_PASSWORD_SIZE], int arr_len, int times)
{
  if (((arr_len * times) + arr_len) >= RP_PASSWORD_SIZE) return (arr_len);

  int orig_len = arr_len;

  int i;

  for (i = 0; i < times; i++)
  {
    memcpy (&arr[arr_len], arr, orig_len);

    arr_len += orig_len;
  }

  return (arr_len);
}
