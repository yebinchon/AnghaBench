
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void MANGLE_SWITCH (char *arr, const int l, const int r)
{
  char c = arr[r];
  arr[r] = arr[l];
  arr[l] = c;
}
