
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ str_inarray (char const*,char const**,int) ;

__attribute__((used)) static void
set_array_opt (const char *oarg, const char *arr[], int *size, int max)
{
  if (str_inarray (oarg, arr, *size) < 0 && *size < max)
    arr[(*size)++] = oarg;
}
